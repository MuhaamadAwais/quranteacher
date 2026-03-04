import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Fullexportreport extends StatelessWidget {
  const Fullexportreport({super.key});

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
          color: AppColors.textWhite.withOpacity(0.25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.download, color: AppColors.textWhite),
            Text(
              "Export full Report",
              style: TextStyle(
                color: AppColors.textWhite,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
