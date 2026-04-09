import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Maintopcontiback extends StatelessWidget {
  const Maintopcontiback({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.3,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [AppColors.topmaingreen,AppColors.bottommaingreen],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
