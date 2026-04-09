import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textreiview extends StatelessWidget {
  const Textreiview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: Icon(Icons.arrow_back_ios_new_rounded, color: AppColors.textWhite),
          ),
        ),

        SizedBox(width: 5,),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Review & Ratings",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Text(
                "Student Feedback",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.textWhite.withOpacity(0.15),
            ),
            child: Icon(Icons.filter_alt_outlined, color: AppColors.textWhite),
          ),
        ),
      ],
    );
  }
}
