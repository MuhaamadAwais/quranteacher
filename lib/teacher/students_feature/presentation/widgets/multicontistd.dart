import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Multicontistd extends StatelessWidget {
  const Multicontistd({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        design(width * 0.28,height * 0.1 ,6, "Students"),
        design(width * 0.28,height * 0.1 ,94, "Avg Progress"),
        design(width * 0.28,height * 0.1, 4.8, "Avg Rating"),
      ],
    );
  }

  Widget design(
    double width,
    double height,
    num valuenumber,
    String namespurpose,
  ) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.textWhite.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            valuenumber.toString(),
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          Text(
            namespurpose,
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
