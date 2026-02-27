import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textstudent extends StatelessWidget {
  const Textstudent({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
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
            "My Students",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
