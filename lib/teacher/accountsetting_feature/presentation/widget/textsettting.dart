import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textsettting extends StatelessWidget {
  const Textsettting({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child:         Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Colors.white.withOpacity(0.3)),
          ),
            child: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.textWhite,size: 24,),
          ),
        ),

        SizedBox(width: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Account Settings",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),

            Text(
              "Manage your profile information",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
