import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Tophadits extends StatelessWidget {
  const Tophadits({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.6,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [AppColors.islamicNavy600, Colors.deepPurple.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}
