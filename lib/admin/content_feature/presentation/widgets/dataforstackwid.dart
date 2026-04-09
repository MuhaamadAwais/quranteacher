import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Dataforstackwid extends StatelessWidget {
  const Dataforstackwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        design(width * 0.28, height * 0.1, 156, "Total items"),
        design(width * 0.28, height * 0.1, 142, "Published"),
        design(width * 0.28, height * 0.1, 14, "Drafts"),
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            valuenumber.toString(),
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),

          Text(
            namespurpose,
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
