import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

class Submitapplicationconti extends StatelessWidget {
  final VoidCallback ontabs;
  const Submitapplicationconti({super.key,required this.ontabs});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: ontabs,
        child: Container(
          height: height * 0.08,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [AppColors.toplast,AppColors.toplast],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              "Submit Application",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                  fontSize: 18
              ),
            ),
          ),
        ),
      ),
    );
  }
}
