import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

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
          colors: [Colors.orange, Colors.deepOrangeAccent],
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
                shape: BoxShape.circle,
                color: AppColors.textWhite.withOpacity(0.15),
              ),
              child: Icon(Icons.arrow_back, color: AppColors.textWhite),
            ),
            SizedBox(width: 5),
            Text(
              "Content Managment",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
