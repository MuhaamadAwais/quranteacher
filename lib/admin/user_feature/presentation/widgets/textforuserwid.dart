import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textforuserwid extends StatelessWidget {
  const Textforuserwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3),
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
            "User Managment",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}