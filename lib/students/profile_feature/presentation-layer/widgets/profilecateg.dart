import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';

class Profilecateg extends StatelessWidget {
  const Profilecateg({
    super.key,
    required this.size,
    required this.mainicon,
    required this.title,
    required this.positionalIcon,
    this.color = Colors.green,
  });
  final Size size;
  final Icon mainicon;
  final String title;
  final Icon positionalIcon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    final width = size.width;
    return Card(
      color: Colors.white30,
      elevation: 3,
      shadowColor: Newcolors.green700,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: height * 0.1,
        child: Container(
          height: height * 0.09,
          width: width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              SizedBox(width: width * 0.05),
              Positioned(
                top: height * 0.02,
                left: width * 0.04,
                child: Container(
                  height: height * 0.06,
                  width: width * 0.12,
                  decoration: BoxDecoration(
                    gradient: AppColors.icongradient,
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Icon(
                    mainicon.icon,
                    size: 24,
                    color: AppColors.textWhite,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.03,
                left: width * 0.2,
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              SizedBox(width: width * 0.28),
              Positioned(
                top: height * 0.04,
                left: width * 0.8,
                child: Icon(
                  positionalIcon.icon,
                  size: 25,
                  color: AppColors.textGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
