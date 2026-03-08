import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/currentsurah.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/maincontstd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/namestd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/progessstd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/quickaccesconti.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/textacces.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/topcontistd.dart';

class Studentdashboardpage extends StatefulWidget {
  const Studentdashboardpage({super.key});
  static String routeName = '/studentdashboardpage';

  @override
  State<Studentdashboardpage> createState() => _StudentdashboardpageState();
}

class _StudentdashboardpageState extends State<Studentdashboardpage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Same as LessonScreen
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08), // Exact same as LessonScreen
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
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: FadeTransition(
          opacity: _fadeAnimation, //  Main Fade (same as LessonScreen)
          child: SlideTransition(
            position: _slideAnimation, //  Main Slide (same as LessonScreen)
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //  1. Header Stack (No extra animation - natural flow)
                  Stack(
                    children: [
                      Topcontistd(),
                      Positioned(
                        top: 40,
                        left: 10,
                        right: 10,
                        child: Namestd(),
                      ),
                      Positioned(
                        top: 120,
                        left: 10,
                        right: 10,
                        child: Maincontstd(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),

                  //  2. Progress - TweenAnimationBuilder (150ms delay)
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 400 + (0 * 150)),
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
                    child: Progessstd(),
                  ),

                  SizedBox(height: 10),

                  //  3. Current Surah (300ms delay)
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 400 + (1 * 150)),
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
                    child: Currentsurah(),
                  ),

                  // 4. Text Access (450ms delay)
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 400 + (2 * 150)),
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
                    child: Textacces(),
                  ),

                  SizedBox(height: 10),

                  //  5. Quick Access (600ms delay) + Scale effect
                  TweenAnimationBuilder<double>(
                    duration: const Duration(
                      milliseconds: 700,
                    ), // Same as Lastcontainer
                    tween: Tween(begin: 0, end: 1),
                    curve: Curves.easeOut,
                    builder: (context, value, child) {
                      return Opacity(
                        opacity: value,
                        child: Transform.scale(
                          scale: 0.95 + (0.05 * value), // Same scale effect
                          child: child,
                        ),
                      );
                    },
                    child: Quickaccesconti(),
                  ),

                  SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// void main() {
//   runApp(MaterialApp(home: Scaffold(body: Studentdashboardpage())));
// }
