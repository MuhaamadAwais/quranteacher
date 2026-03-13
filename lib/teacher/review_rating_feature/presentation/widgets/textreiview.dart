import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textreiview extends StatelessWidget {
  const Textreiview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.textWhite.withOpacity(0.15),
            ),
            child: Icon(Icons.arrow_back, color: AppColors.textWhite),
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Review & Ratings",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),

              Text(
                "Student Feedback",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 1,
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.textWhite.withOpacity(0.15),
            ),
            child: Icon(Icons.add, color: AppColors.textWhite),
          ),
        ),
      ],
    );
  }
}
