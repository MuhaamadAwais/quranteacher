import 'package:flutter/material.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/notificationmodel.dart';

class AdminNotification extends StatefulWidget {
  const AdminNotification({super.key});
  @override
  AdminNotificationsScreenUIState createState() =>
      AdminNotificationsScreenUIState();
}

class AdminNotificationsScreenUIState extends State<AdminNotification> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  String _selectedTarget = 'All Students';
  List<NotificationModel> notifications = [
    NotificationModel(
      id: '1',
      title: 'New Lesson Available',
      body: 'Check out Quran Lesson 5',
      target: 'Class 1',
      timestamp: DateTime.now().subtract(Duration(hours: 2)),
    ),
    NotificationModel(
      id: '2',
      title: 'Quiz Reminder',
      body: 'Tomorrow\'s quiz on Hadith',
      target: 'All Students',
      timestamp: DateTime.now().subtract(Duration(days: 1)),
    ),
  ];

  void _addNotification() {
    setState(() {
      final newNotif = NotificationModel(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        title: _titleController.text,
        body: _bodyController.text,
        target: _selectedTarget,
        timestamp: DateTime.now(),
      );
      if (_titleController.text.isNotEmpty && _bodyController.text.isNotEmpty) {
        notifications.insert(0, newNotif); // Add to top
        _titleController.clear();
        _bodyController.clear();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Notification added!')));
      } else {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Please fill both fields!')));
      }
    });
  }

  void _deleteNotification(String id) {
    setState(() {
      notifications.removeWhere((n) => n.id == id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text(
          'Admin Notifications',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF4A90E2),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Compose Section
            Container(
              padding: EdgeInsets.all(2),
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(height: 12),
                  SizedBox(
                    width: width * 0.9,
                    child: TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: 'Title',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.title),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(
                    width: width * 0.92,
                    child: TextField(
                      controller: _bodyController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Message',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(Icons.message),
                      ),
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            initialValue: _selectedTarget,
                            decoration: InputDecoration(
                              labelText: 'Target',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.group),
                            ),
                            items:
                                [
                                      'All Students',
                                      'Class 1',
                                      'Class 2',
                                      'Class 3',
                                      'Teachers',
                                    ]
                                    .map(
                                      (e) => DropdownMenuItem(
                                        value: e,
                                        child: Text(e),
                                      ),
                                    )
                                    .toList(),
                            onChanged: (value) {
                              setState(() {
                                _selectedTarget = value!;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 12),
                        ElevatedButton.icon(
                          onPressed: _addNotification,
                          icon: Icon(Icons.send),
                          label: Text('Send'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF4A90E2),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                '${notifications.length} Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            // List Section
            Expanded(
              child: ListView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  final notif = notifications[index];
                  return Card(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      leading: CircleAvatar(
                        backgroundColor: Color(0xFF4A90E2),
                        child: Icon(Icons.notifications, color: Colors.white),
                      ),
                      title: Text(
                        notif.title,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(notif.body),
                          SizedBox(height: 4),
                          Text(
                            'Target: ${notif.target} • ${notif.timestamp.toString().substring(0, 16)}',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _deleteNotification(notif.id),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
