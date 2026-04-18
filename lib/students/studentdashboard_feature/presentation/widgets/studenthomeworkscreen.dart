import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class StudentHomeworkScreen extends StatefulWidget {
  const StudentHomeworkScreen({super.key});

  @override
  State<StudentHomeworkScreen> createState() => _StudentHomeworkScreenState();
}

class _StudentHomeworkScreenState extends State<StudentHomeworkScreen>
    with SingleTickerProviderStateMixin {
  List<Map<String, dynamic>> homework = [
    {
      'title': 'Memorize Surah Al-Fatihah',
      'subject': 'Quran Hifz',
      'due': 'Today',
      'progress': 70,
      'completed': false,
    },
    {
      'title': 'Tajweed: Noon Saakinah Rules',
      'subject': 'Tajweed',
      'due': 'Tomorrow',
      'progress': 40,
      'completed': false,
    },
    {
      'title': 'Sifaat Quiz (5/5)',
      'subject': 'Aqeedah',
      'due': 'Today',
      'progress': 100,
      'completed': true,
    },
    {
      'title': 'Surah Ikhlas 10x Recitation',
      'subject': 'Tilawah',
      'due': 'Tomorrow',
      'progress': 0,
      'completed': false,
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
      duration: Duration(seconds: 1), // LessonScreen same
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
    int pendingCount = homework.where((h) => !h['completed']).length;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
          child: SlideTransition(
            position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
            child: Column(
              children: [
                // SizedBox(height: height * 0.05),
                TopcommonContainer(
                  title: "📚 My Homework",
                  heights: height * 0.13,
                ),
                // 🔥 1. Stats Header (400ms)
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 400),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: double.infinity,

                      padding: EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: AppColors.icongradient,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          _buildStatCard(
                            'Pending',
                            '$pendingCount',
                            Icons.pending_actions,
                            Colors.green,
                          ),
                          _buildStatCard(
                            'Completed',
                            '${4 - pendingCount}',
                            Icons.check_circle,
                            Colors.green,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // 🔥 2. Homework List (staggered index * 150ms)
                Expanded(
                  child: TweenAnimationBuilder<double>(
                    duration: Duration(milliseconds: 700),
                    tween: Tween(begin: 0, end: 1),
                    curve: Curves.easeOut,
                    builder: (context, value, child) => Opacity(
                      opacity: value,
                      child: Transform.scale(
                        scale: 0.95 + (0.05 * value),
                        child: child,
                      ),
                    ),
                    child: ListView.separated(
                      padding: EdgeInsets.all(20),
                      itemCount: homework.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final task = homework[index];
                        return TweenAnimationBuilder<double>(
                          duration: Duration(
                            milliseconds: 400 + (index * 150),
                          ), // 🔥 Staggered!
                          tween: Tween(begin: 0, end: 1),
                          curve: Curves.easeOut,
                          builder: (context, value, child) => Opacity(
                            opacity: value,
                            child: Transform.translate(
                              offset: Offset(0, 20 * (1 - value)),
                              child: child,
                            ),
                          ),
                          child: _buildHomeworkCard(task, index),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: TweenAnimationBuilder<double>(
        duration: Duration(milliseconds: 1000),
        tween: Tween(begin: 0, end: 1),
        curve: Curves.easeOut,
        builder: (context, value, child) => Opacity(
          opacity: value,
          child: Transform.translate(
            offset: Offset(0, 20 * (1 - value)),
            child: child,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: AppColors.icongradient,
            borderRadius: BorderRadius.circular(30),
          ),
          child: FloatingActionButton.extended(
            onPressed: () {},
            backgroundColor: Colors.transparent,
            elevation: 0,
            label: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.download, color: Colors.white),
                SizedBox(width: 8),
                Text(
                  'Export',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Same methods unchanged
  Widget _buildStatCard(
    String label,
    String count,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: const Color.fromARGB(97, 129, 181, 118),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
        border: Border.all(color: Colors.white54, width: 1.2),
      ),
      child: Column(
        children: [
          Icon(icon, size: 32, color: color),
          SizedBox(height: 8),
          Text(
            count,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white70,
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHomeworkCard(Map<String, dynamic> task, int index) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: task['completed']
                        ? Colors.lightGreen
                        : AppColors.textGreen,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      '${index + 1}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: task['completed']
                            ? Colors.green[700]
                            : AppColors.textWhite,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        task['title'],
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          decoration: task['completed']
                              ? TextDecoration.lineThrough
                              : null,
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: [
                          Icon(Icons.book, size: 16, color: Colors.grey[600]),
                          SizedBox(width: 4),
                          Text(
                            task['subject'],
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(
                            Icons.schedule,
                            size: 16,
                            color: Newcolors.green900,
                          ),
                          SizedBox(width: 4),
                          Text(
                            'Due: ${task['due']}',
                            style: TextStyle(
                              color: Newcolors.green500,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: task['progress'] / 100,
                          backgroundColor: Colors.grey[200],
                          valueColor: AlwaysStoppedAnimation<Color>(
                            task['completed']
                                ? Colors.green
                                : AppColors.bottomlast,
                          ),
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${task['progress']}% Complete',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          if (!task['completed'])
                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(172, 24, 99, 28),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Text(
                                'Mark Complete',
                                style: TextStyle(
                                  color: Newcolors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
