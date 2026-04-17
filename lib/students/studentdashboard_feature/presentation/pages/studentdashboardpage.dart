import 'package:flutter/material.dart';
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
  late Animation<double> _buttonscale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _buttonscale = Tween<double>(begin: 0.8, end: 1).animate(_controller);
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

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: FadeTransition(
          opacity: _fadeAnimation,
          child: SlideTransition(
            position: _slideAnimation,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      Topcontistd(),
                      Positioned(
                        top: 10,
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
                  SizedBox(height: 12),
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
                    child: Padding(
                      padding: const EdgeInsets.only(right: 152),
                      child: SizedBox(
                        width: size.width * 0.45,
                        child: Textacces(),
                      ),
                    ),
                  ),
            
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
            
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

