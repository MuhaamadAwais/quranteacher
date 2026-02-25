import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Hadiesconti extends StatelessWidget {
  const Hadiesconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.textWhite.withOpacity(0.15),
        ),
      ),
    );
  }
}
