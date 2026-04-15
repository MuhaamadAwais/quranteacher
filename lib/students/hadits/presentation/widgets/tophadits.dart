import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
//import 'package:quranteacher/appcolors.dart';

class Tophadits extends StatelessWidget {
  const Tophadits({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.44,
      decoration: BoxDecoration(
        gradient: AppColors.backgroundgradient,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
    );
  }
}
