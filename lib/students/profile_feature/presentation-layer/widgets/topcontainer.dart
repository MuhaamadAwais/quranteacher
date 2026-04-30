import 'dart:io';
import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Topcontainer extends StatefulWidget {
  const Topcontainer({
    super.key,
    required this.size,
    required this.name,
    required this.address,
    required this.imagePath,
  });

  final Size size;
  final String name;
  final String address;
  final String imagePath;

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
      duration: const Duration(milliseconds: 800),
    );
    _slideAnimation =
        Tween<Offset>(begin: const Offset(0, 0.3), end: Offset.zero).animate(
          CurvedAnimation(
            parent: _animationController,
            curve: Curves.easeOutBack,
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
      child: Stack(
        children: [
          Positioned(
            left: width * 0.38,
            top: height * 0.06,
            child: SlideTransition(
              position: _slideAnimation,
              child: CircleAvatar(
                backgroundImage: FileImage(File(widget.imagePath)),
                radius: 50,
                child: Container(
                  height: height * 0.2,
                  width: width * 0.3,
                  decoration: BoxDecoration(
                    // color: Newcolors.green700,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.whitePrimary, width: 3),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: width * 0.3,
            top: height * 0.194,
            child: SlideTransition(
              position: _slideAnimation,
              child: Container(
                color: Colors.transparent,
                width: width * 0.42,
                child: Center(
                  child: Text(
                    widget.name.isNotEmpty ? widget.name : "M Asrar Ashraf",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: width * 0.29,
            top: height * 0.225,
            child: SlideTransition(
              position: _slideAnimation,
              child: Container(
                width: width * 0.43,
                color: Colors.transparent,
                child: Center(
                  child: Text(
                    widget.address.isNotEmpty ? widget.address : "🏠 Address",
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            left: width * 0.25,
            top: height * 0.26,
            child: SlideTransition(
              position: _slideAnimation,
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
                    const Text(
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

          Positioned(
            left: 0,
            right: 0,
            bottom: 06,
            child: SlideTransition(
              position: _slideAnimation,
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    _buildStatCard(
                      icon: Icons.menu_book,
                      title: "completed",
                      subtitle: "42 Classes",
                      width: width * 0.28,
                      height: height * 0.15,
                    ),
                    SizedBox(width: width * 0.02),
                    _buildStatCard(
                      icon: Icons.military_tech,
                      title: "Achievements",
                      subtitle: "18 Badges",
                      width: width * 0.28,
                      height: height * 0.15,
                    ),
                    SizedBox(width: width * 0.02),
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
          ),
        ],
      ),
    );
  }

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
          borderRadius: const BorderRadius.only(
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
              style: const TextStyle(color: Colors.white, fontSize: 14),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: const TextStyle(
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
