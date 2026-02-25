import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';

void main() {
  runApp(MaterialApp(home: Splashscreenapp()));
}

class Splashscreenapp extends StatefulWidget {
  const Splashscreenapp({super.key});

  @override
  State<Splashscreenapp> createState() => _SplashscreenappState();
}

class _SplashscreenappState extends State<Splashscreenapp>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _infadAnimation;
  late AnimationController _animationControllerdots;
  late Animation<double> dot1;
  late Animation<double> dot2;
  late Animation<double> dot3;
  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _infadAnimation = Tween(begin: 0.5, end: 1.0).animate(_animationController);
    _animationController.repeat();

    _animationControllerdots = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    dot1 = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: _animationControllerdots,
        curve: Interval(0.0, 0.6, curve: Curves.easeInOut),
      ),
    );

    dot2 = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: _animationControllerdots,
        curve: Interval(0.2, 0.8, curve: Curves.easeInOut),
      ),
    );

    dot3 = Tween<double>(begin: 0, end: -10).animate(
      CurvedAnimation(
        parent: _animationControllerdots,
        curve: Interval(0.4, 1.0, curve: Curves.easeInOut),
      ),
    );

    _animationControllerdots.repeat(reverse: true);
    Future.delayed(Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _animationControllerdots.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF059669), // emerald-600
              Color(0xFF10B981), // emerald-500
              Color(0xFF0D9488),
            ],
          ),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.2),
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Glow behind book
                Container(
                  width: height * 0.2,
                  height: height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        blurRadius: 30,
                        spreadRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset("assets/images/iconapp.png"),
                  ),
                ),

                // Sparkles
                Positioned(
                  top: 10,
                  left: -10,
                  child: Icon(Icons.star, color: AppColors.accent, size: 20),
                ),
                Positioned(
                  top: -10,
                  right: -10,
                  child: FadeTransition(
                    opacity: _infadAnimation,
                    child: Icon(Icons.star, color: AppColors.accent, size: 30),
                  ),
                ),
                Positioned(
                  bottom: -8,
                  left: 0,
                  child: FadeTransition(
                    opacity: _infadAnimation,
                    child: Icon(Icons.star, color: AppColors.accent, size: 15),
                  ),
                ),
              ],
            ),

            SizedBox(height: height * 0.02),
            Text(
              "Quran Connect",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),

            SizedBox(height: height * 0.02),
            Text(
              "Live Learning Platform",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),

            SizedBox(height: height * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_buildDot(dot1), _buildDot(dot2), _buildDot(dot3)],
            ),

            SizedBox(height: height * 0.05),
            Text(
              "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.normal,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Add this helper method in your State class
Widget _buildDot(Animation<double> animation) {
  return AnimatedBuilder(
    animation: animation,
    builder: (context, child) {
      return Transform.translate(
        offset: Offset(0, animation.value), // up-down motion
        child: child,
      );
    },
    child: Container(
      width: 10,
      height: 10,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.textWhite,
      ),
    ),
  );
}
