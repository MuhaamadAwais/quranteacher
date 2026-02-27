import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Topcontistd extends StatelessWidget {
  const Topcontistd({super.key});

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: heigth * 0.45,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        color: AppColors.backgroundStart,
      ),
    );
  }
}
