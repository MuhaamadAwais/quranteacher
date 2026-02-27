import 'package:flutter/material.dart';
import 'package:quranteacher/feature/lesson_feature/presentation_layer/widgets/lastcontainer.dart';
import 'package:quranteacher/feature/lesson_feature/presentation_layer/widgets/listcontaierdesign.dart';
import 'package:quranteacher/feature/lesson_feature/presentation_layer/widgets/topcontainer.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/screens/profilescreen.dart';

class Lessonscreen extends StatefulWidget {
  const Lessonscreen({super.key});

  @override
  State<Lessonscreen> createState() => _LessonscreenState();
}

class _LessonscreenState extends State<Lessonscreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
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
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Topcontainer(size: size),
              SizedBox(height: height * 0.01),

              /// 🔥 Animated List Items
              ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return TweenAnimationBuilder<double>(
                    duration: Duration(milliseconds: 400 + (index * 150)),
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
                    child: Listcontaierdesign(size: size),
                  );
                },
              ),

              SizedBox(height: height * 0.05),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recommended for You",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ),

              SizedBox(height: height * 0.01),

              /// 🔥 Animated Last Container
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 700),
                tween: Tween(begin: 0, end: 1),
                curve: Curves.easeOut,
                builder: (context, value, child) {
                  return Opacity(
                    opacity: value,
                    child: Transform.scale(
                      scale: 0.95 + (0.05 * value),
                      child: child,
                    ),
                  );
                },
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => Profilescreen()),
                    );
                  },
                  child: Lastcontainer(size: size),
                ),
              ),

              SizedBox(height: height * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
