import 'package:flutter/material.dart';

class QuranNotificationScreen extends StatefulWidget {
  const QuranNotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuranNotificationScreenState createState() =>
      _QuranNotificationScreenState();
}

class _QuranNotificationScreenState extends State<QuranNotificationScreen> {
  List<Map<String, dynamic>> notifications = [
    {
      'icon': Icons.bookmark,
      'title': 'Surah Al-Fatiha Memorization',
      'subtitle': 'Practice 7 ayats today • 80% complete',
      'time': '5 min ago',
      'type': 'memorization',
      'isRead': false,
      'color': Color(0xFF40C4FF),
    },
    {
      'icon': Icons.video_call,
      'title': 'Live Tajweed Class Starting',
      'subtitle': 'Sheikh Ahmed • Join in 10 min',
      'time': '10 min ago',
      'type': 'live_class',
      'isRead': false,
      'color': Color(0xFFFF9800),
    },
    {
      'icon': Icons.quiz,
      'title': 'Daily Quran Quiz Available',
      'subtitle': 'Test your knowledge • 5 questions',
      'time': '1 hr ago',
      'type': 'quiz',
      'isRead': true,
      'color': Color(0xFF4CAF50),
    },
    {
      'icon': Icons.lock_open,
      'title': 'New Lesson Unlocked!',
      'subtitle': 'Surah Al-Baqarah Ayat 1-20',
      'time': 'Today',
      'type': 'lesson',
      'isRead': false,
      'color': Color(0xFFE91E63),
    },
    {
      'icon': Icons.message,
      'title': 'Message from Ustad Ahmed',
      'subtitle': 'Great progress! Keep it up 👍',
      'time': 'Yesterday',
      'type': 'teacher_message',
      'isRead': true,
      'color': Color(0xFF9C27B0),
    },
  ];

  @override
  Widget build(BuildContext context) {
    final unreadCount = notifications.where((n) => !n['isRead']).length;

    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBar(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(10),
            bottomLeft: Radius.circular(10),
          ),
        ),
        title: Row(
          children: [
            Icon(Icons.notifications_none, color: Colors.white),
            SizedBox(width: 12),
            Text('Notifications', style: TextStyle(color: Colors.white)),
            Spacer(),
            if (unreadCount > 0)
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  '$unreadCount',
                  style: TextStyle(
                    color: Color(0xFF40C4FF),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
          ],
        ),
        backgroundColor: Color(0xFF40C4FF),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.mark_chat_read, color: Colors.white),
            onPressed: _markAllRead,
          ),
        ],
      ),
      body: Column(
        children: [
          // Quick Actions
          Container(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.play_lesson,
                    label: 'Continue Learning',
                    color: Color(0xFF4CAF50),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: _buildActionButton(
                    icon: Icons.quiz,
                    label: 'Take Quiz',
                    color: Color(0xFFFF9800),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16),
              itemCount: notifications.length,
              itemBuilder: (context, index) {
                return _buildQuranNotification(notifications[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 2)),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildQuranNotification(Map<String, dynamic> notification) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: notification['isRead'] ? Colors.white : Color(0xFFF0F8FF),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: notification['isRead']
              ? Colors.grey.shade200
              : Color(0xFF40C4FF),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(20),
        leading: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: notification['color'].withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            notification['icon'],
            color: notification['color'],
            size: 24,
          ),
        ),
        title: Text(
          notification['title'],
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            height: 1.3,
            color: Colors.black87,
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notification['subtitle'],
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        size: 14,
                        color: Colors.grey[500],
                      ),
                      SizedBox(width: 4),
                      Text(
                        notification['time'],
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[500],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  if (!notification['isRead'])
                    Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                        color: notification['color'],
                        shape: BoxShape.circle,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
        onTap: () => _handleNotificationTap(notification),
      ),
    );
  }

  void _handleNotificationTap(Map<String, dynamic> notification) {
    setState(() {
      notification['isRead'] = true;
    });
    // Navigate to specific screen
    print('Tapped: ${notification['title']}');
  }

  void _markAllRead() {
    setState(() {
      for (var notification in notifications) {
        notification['isRead'] = true;
      }
    });
  }
}
