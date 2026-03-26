import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Submitbtn extends StatelessWidget {
  const Submitbtn({super.key});

  @override
  Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.08,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.switchBackground, width: 1.5),
          color: AppColors.startgreen,
        ),
        child: Center(
          child: Text(
            "Submit for Verification",
            style: TextStyle(color: AppColors.textWhite, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}