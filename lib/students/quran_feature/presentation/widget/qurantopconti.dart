import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Qurantopconti extends StatelessWidget {
  const Qurantopconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.23,
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
