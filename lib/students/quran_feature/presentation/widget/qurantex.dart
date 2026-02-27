import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Qurantex extends StatelessWidget {
  const Qurantex({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
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
          "Quran",
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
