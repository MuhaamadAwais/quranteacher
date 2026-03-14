import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/teachernotificationmodel.dart';

class TeacherNotificationsScreen extends StatefulWidget {
  const TeacherNotificationsScreen({Key? key});
  @override
  _TeacherNotificationsScreenState createState() =>
      _TeacherNotificationsScreenState();
}

class _TeacherNotificationsScreenState
    extends State<TeacherNotificationsScreen> {
  List<TeacherNotificationModel> notifications = [
    TeacherNotificationModel(
      id: '1',
      title: 'Ahmed Absent Today',
      body: 'Ahmed missed Quran lesson',
      studentName: 'Ahmed Khan',
      className: 'Class 1',
      timestamp: DateTime.now().subtract(Duration(hours: 1)),
      isRead: false,
    ),
    TeacherNotificationModel(
      id: '2',
      title: 'Sara Quiz Score 6/10',
      body: 'Needs improvement in Tajweed',
      studentName: 'Sara Malik',
      className: 'Class 1',
      timestamp: DateTime.now().subtract(Duration(hours: 3)),
      isRead: true,
    ),
    TeacherNotificationModel(
      id: '3',
      title: 'New Assignment Posted',
      body: 'Hadith memorization task',
      studentName: 'All Students',
      className: 'Class 2',
      timestamp: DateTime.now().subtract(Duration(days: 1)),
    ),
  ];

  void _markAsRead(String id) {
    setState(() {
      final notif = notifications.firstWhere((n) => n.id == id);
      notif.isRead = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF7F9FC),
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(Icons.notifications_active, color: Colors.white),
            ),
            SizedBox(width: 12),
            Text(
              'Alerts & Updates',
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ],
        ),
        backgroundColor: Color(0xFF28A745),
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 16),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.9),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${notifications.where((n) => !n.isRead).length}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          // Header Stats
          Container(
            margin: EdgeInsets.all(16),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Alerts',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      Text(
                        '${notifications.length}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF28A745),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Unread',
                        style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                      ),
                      Text(
                        '${notifications.where((n) => !n.isRead).length}',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                final notif = notifications[index];
                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Card(
                    elevation: 4,
                    shadowColor: Colors.black.withOpacity(0.1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: notif.isRead
                            ? Colors.white
                            : Colors.red.withOpacity(0.05),
                        border: notif.isRead
                            ? null
                            : Border(
                                left: BorderSide(color: Colors.red, width: 4),
                              ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Avatar
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: notif.isRead ? Colors.green : Colors.red,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                          SizedBox(width: 9),
                          // Content
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        notif.title,
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                    if (!notif.isRead)
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 8,
                                          vertical: 4,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.circular(
                                            12,
                                          ),
                                        ),
                                        child: Text(
                                          'NEW',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      )
                                    else
                                      Icon(
                                        Icons.check_circle,
                                        color: Color(0xFF28A745),
                                      ),
                                  ],
                                ),
                                SizedBox(height: 8),
                                Text(
                                  notif.body,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.grey[700],
                                  ),
                                ),
                                SizedBox(height: 8),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.school,
                                      size: 16,
                                      color: Colors.grey[600],
                                    ),
                                    SizedBox(width: 2),
                                    Text(
                                      notif.studentName,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    Text(
                                      notif.className,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      _formatTime(notif.timestamp),
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[500],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                if (!notif.isRead)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Container(
                                      height: height * 0.06,
                                      width: width * 0.4,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF28A745),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: TextButton(
                                        onPressed: () {
                                          setState(() => notif.isRead = true);
                                          ScaffoldMessenger.of(
                                            context,
                                          ).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                '${notif.title} marked as read',
                                              ),
                                            ),
                                          );
                                        },
                                        child: Text(
                                          'Mark Read',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                // else
                                //   Icon(
                                //     Icons.check_circle,
                                //     color: Color(0xFF28A745),
                                //   ),
                              ],
                            ),
                          ),
                          // Action Button
                          SizedBox(width: 08),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  // Helper method
  String _formatTime(DateTime time) {
    final now = DateTime.now();
    if (now.difference(time).inHours < 1) {
      return '${now.difference(time).inMinutes}m ago';
    } else if (now.difference(time).inDays < 1) {
      return '${now.difference(time).inHours}h ago';
    }
    return '${now.difference(time).inDays}d ago';
  }
}
