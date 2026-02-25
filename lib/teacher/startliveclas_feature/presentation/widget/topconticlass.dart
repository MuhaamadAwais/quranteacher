import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Topconticlass extends StatelessWidget {
  const Topconticlass({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.1,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [AppColors.islamicNavy600, AppColors.islamicNavy700],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.textWhite.withOpacity(0.15),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(Icons.arrow_back, color: AppColors.textWhite),
              ),
            ),

            SizedBox(width: 10),
            Text(
              "Start Live Class",
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
