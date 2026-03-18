import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Savebtnsetting extends StatelessWidget {
  const Savebtnsetting({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.075,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.backgroundStart, AppColors.islamicEmerald],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(Icons.file_copy_outlined, color: AppColors.textWhite),
              SizedBox(width: 10,),
              Text(
                "Save Changes",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
