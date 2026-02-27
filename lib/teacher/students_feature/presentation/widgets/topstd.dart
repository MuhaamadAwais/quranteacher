import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Topstd extends StatelessWidget {
  const Topstd({super.key});

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.33,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [AppColors.backgroundStart, AppColors.backgroundEnd],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),);
  }
}