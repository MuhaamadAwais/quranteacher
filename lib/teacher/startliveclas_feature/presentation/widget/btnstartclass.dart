import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Btnstartclass extends StatelessWidget {
  const Btnstartclass({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.07,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.islamicNavy600, AppColors.islamicNavy700],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.camera, color: AppColors.textWhite),
            SizedBox(width: 20,),
            Text(
              "Start Live Class Now",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
