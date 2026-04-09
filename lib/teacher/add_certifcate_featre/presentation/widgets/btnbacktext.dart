import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Btnbacktext extends StatelessWidget {
  const Btnbacktext({super.key});

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
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.textWhite.withOpacity(0.15),
            ),
            child: Icon(Icons.arrow_back, color: AppColors.textWhite,size: 24,),
          ),
        ),

        SizedBox(width: 10),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Add Certificate",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            Text(
              "Upload your credentials",
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
