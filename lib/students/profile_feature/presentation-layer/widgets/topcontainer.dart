import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';

class Topcontainer extends StatefulWidget {
  const Topcontainer({super.key, required this.size});
  final Size size;

  @override
  State<Topcontainer> createState() => _TopcontainerState();
}

class _TopcontainerState extends State<Topcontainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800), // Smooth 800ms
    );
    _slideAnimation =
        Tween<Offset>(
          begin: const Offset(0, 0.3), // Slide up se start
          end: Offset.zero,
        ).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutBack, // Beautiful curve
          ),
        );
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = widget.size.height;
    final width = widget.size.width;

    return Container(
      height: height * 0.5,
      width: width,
      decoration: BoxDecoration(
        gradient: AppColors.backgroundgradient,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          // Profile Avatar
          Positioned(
            left: width * 0.36,
            top: height * 0.06,
            child: SlideTransition(
              position: _slideAnimation,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Newcolors.whiteSoft,
                child: Icon(
                  Icons.person_2_rounded,
                  size: 32,
                  color: Newcolors.green900,
                ),
              ),
            ),
          ),

          // Badge Icon
          // Positioned(
          //   left: width * 0.56,
          //   top: height * 0.15,
          //   child: SlideTransition(
          //     position: _slideAnimation,
          //     child: Container(
          //       height: height * 0.05,
          //       width: width * 0.1,
          //       decoration: BoxDecoration(
          //         gradient: LinearGradient(
          //           colors: [AppColors.bottomlast, AppColors.whiteBackground],
          //           begin: Alignment.topLeft,
          //           end: Alignment.bottomRight,
          //         ),
          //         borderRadius: BorderRadius.circular(20),
          //         border: Border.all(color: AppColors.topmaingreen, width: 3),
          //       ),
          //       child: Icon(
          //         Icons.military_tech_outlined,
          //         color: Newcolors.green900,
          //       ),
          //     ),
          //   ),
          // ),

          // Username
          SlideTransition(
            position: _slideAnimation,
            child: Positioned(
              left: width * 0.355,
              top: height * 0.195,
              child: Text(
                "M Asrar Ashraf",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Email
          SlideTransition(
            position: _slideAnimation,
            child: Positioned(
              left: width * 0.355,
              top: height * 0.22,
              child: Text(
                "abcd@gmail.com",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ),
          ),
          SizedBox(height: height * 0.01),
          // Level Container
          SlideTransition(
            position: _slideAnimation,
            child: Positioned(
              left: width * 0.27,
              top: height * 0.253,
              child: Container(
                height: height * 0.06,
                width: width * 0.5,
                decoration: BoxDecoration(
                  gradient: AppColors.icongradient,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white24),
                ),
                child: Row(
                  children: [
                    SizedBox(width: width * 0.04),
                    Icon(Icons.star, color: AppColors.topmiddle, size: 24),
                    SizedBox(width: width * 0.02),
                    Text(
                      "Level 5 Scholar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: height * 0.01),

          // Stats Cards Row - Simple Slide Animation
          SlideTransition(
            position: _slideAnimation,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  // 1. Completed Classes
                  _buildStatCard(
                    icon: Icons.menu_book,
                    title: "completed",
                    subtitle: "42 Classes",
                    width: width * 0.28,
                    height: height * 0.15,
                  ),
                  SizedBox(width: width * 0.02),

                  // 2. Achievements
                  _buildStatCard(
                    icon: Icons.military_tech,
                    title: "Achievements",
                    subtitle: "18 Badges",
                    width: width * 0.28,
                    height: height * 0.15,
                  ),
                  SizedBox(width: width * 0.02),

                  // 3. Streak
                  _buildStatCard(
                    icon: Icons.calendar_month_sharp,
                    title: "Streak",
                    subtitle: "15 days",
                    width: width * 0.28,
                    height: height * 0.15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 🔥 Simple Reusable Stat Card
  Widget _buildStatCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required double width,
    required double height,
  }) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: AppColors.icongradient,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
          border: Border.all(color: Colors.white24, width: 1.5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: height * 0.33,
              width: width * 0.36,
              decoration: BoxDecoration(
                color: const Color.fromARGB(60, 52, 233, 169),
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.grey, width: 1.5),
              ),
              child: Icon(icon, color: Colors.white, size: 24),
            ),
            SizedBox(height: height * 0.02),
            Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
