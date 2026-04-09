import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

class Topcontent extends StatelessWidget {
  const Topcontent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [AppColors.topmaingreen,AppColors.bottommaingreen],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.white.withOpacity(0.3)),
              ),
              child: GestureDetector(
                onTap: () {
                  indexscreen = 0;
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Bottomnaviteacher(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColors.textWhite,
                  size: 24,
                ),
              ),
            ),

            SizedBox(width: 5),
            Text(
              "Content Managment",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
