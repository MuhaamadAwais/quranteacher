import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/videocallscreen.dart';

class Maincontstd extends StatefulWidget {
  const Maincontstd({super.key});

  @override
  State<Maincontstd> createState() => _MaincontstdState();
}

class _MaincontstdState extends State<Maincontstd>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2), // LessonScreen same
    );
    _fadeAnimation = Tween<double>(
      begin: 0.9,
      end: 1,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    _controller.forward();
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return ScaleTransition(
      scale: _fadeAnimation,

      child: FadeTransition(
        opacity: _fadeAnimation,
        child: Container(
          height: heigth * 0.25,
          width: width,
          decoration: BoxDecoration(
            color: AppColors.endgreen,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.backgroundStart, width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      width: width * 0.15,
                      height: heigth * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: AppColors.gradient,
                      ),
                      child: Icon(
                        Icons.video_camera_back_outlined,
                        color: AppColors.textWhite,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "TODAY's CLASS",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Tajweed Rules",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "- Noon",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      "Sakianh",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.lock_clock, color: AppColors.textWhite),
                        SizedBox(width: width * 0.01),
                        Text(
                          "4:00PM - 5:00 PM",
                          style: TextStyle(
                            color: AppColors.textWhite,
                            fontWeight: FontWeight.normal,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                Videocallscreen(height: heigth, width: width),
                          ),
                        );
                      },
                      child: ScaleTransition(
                        scale: _fadeAnimation,
                        child: Container(
                          height: 35,
                          width: width * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.textWhite,
                          ),
                          child: Center(
                            child: Text(
                              "Join Now",
                              style: TextStyle(
                                color: AppColors.backgroundStart,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
