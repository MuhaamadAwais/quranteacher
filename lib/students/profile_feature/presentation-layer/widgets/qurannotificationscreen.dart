import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class QuranNotificationScreen extends StatefulWidget {
  const QuranNotificationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _QuranNotificationScreenState createState() =>
      _QuranNotificationScreenState();
}

class _QuranNotificationScreenState extends State<QuranNotificationScreen>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> notifications = [
    {
      'icon': Icons.bookmark,
      'title': 'Surah Al-Fatiha Memorization',
      'subtitle': 'Practice 7 ayats today • 80% complete',
      'time': '5 min ago',
      'type': 'memorization',
      'isRead': false,
      'color': Colors.white,
    },
    {
      'icon': Icons.video_call,
      'title': 'Live Tajweed Class Starting',
      'subtitle': 'Sheikh Ahmed • Join in 10 min',
      'time': '10 min ago',
      'type': 'live_class',
      'isRead': false,
      'color': Colors.white,
    },
    {
      'icon': Icons.quiz,
      'title': 'Daily Quran Quiz Available',
      'subtitle': 'Test your knowledge • 5 questions',
      'time': '1 hr ago',
      'type': 'quiz',
      'isRead': true,
      'color': Colors.white,
    },
    {
      'icon': Icons.lock_open,
      'title': 'New Lesson Unlocked!',
      'subtitle': 'Surah Al-Baqarah Ayat 1-20',
      'time': 'Today',
      'type': 'lesson',
      'isRead': false,
      'color': Colors.white,
    },
    {
      'icon': Icons.message,
      'title': 'Message from Ustad Ahmed',
      'subtitle': 'Great progress! Keep it up 👍',
      'time': 'Yesterday',
      'type': 'teacher_message',
      'isRead': true,
      'color': Colors.white,
    },
  ];

  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final unreadCount = notifications.where((n) => !n['isRead']).length;

    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            children: [
              TopcommonContainer(
                title: "Notifications",
                subTitle: "Update Notifications: $unreadCount",
              ),
              SizedBox(height: 20),

              Expanded(
                child: ListView(
                  // 🔥 SINGLE ListView - سب scrollable
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(16),
                  children: [
                    // 1. Top Container

                    // 2. Quick Actions (400ms animation)
                    TweenAnimationBuilder<double>(
                      duration: Duration(milliseconds: 400),
                      tween: Tween(begin: 0, end: 1),
                      curve: Curves.easeOut,
                      builder: (context, value, child) {
                        return Opacity(
                          opacity: value,
                          child: Transform.translate(
                            offset: Offset(0, 20 * (1 - value)),
                            child: child,
                          ),
                        );
                      },
                      child: Container(
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
                                color: Newcolors.green400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    // 3. Notifications List (staggered 150ms)
                    ...List.generate(
                      notifications.length,
                      (index) => TweenAnimationBuilder<double>(
                        duration: Duration(milliseconds: 400 + (index * 150)),
                        tween: Tween(begin: 0, end: 1),
                        curve: Curves.easeOut,
                        builder: (context, value, child) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Opacity(
                              opacity: value,
                              child: Transform.translate(
                                offset: Offset(0, 20 * (1 - value)),
                                child: child,
                              ),
                            ),
                          );
                        },
                        child: _buildQuranNotification(notifications[index]),
                      ),
                    ),

                    SizedBox(height: 20), // bottom padding
                  ],
                ),
              ),
            ],
          ),
        ),
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
        color: notification['isRead']
            ? Colors.white
            : const Color.fromARGB(148, 200, 230, 201),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: notification['isRead']
              ? Colors.grey.shade200
              : Newcolors.green700,
          width: 1.5,
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
            shape: BoxShape.circle,
            gradient: AppColors.icongradient,
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
                        color: Newcolors.green700,
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
    setState(() => notification['isRead'] = true);
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
