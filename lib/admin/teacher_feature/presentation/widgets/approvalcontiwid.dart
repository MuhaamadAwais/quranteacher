import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Approvalcontiwid extends StatelessWidget {
  const Approvalcontiwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Align(
      alignment: Alignment.center, // ya jo chaho
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: width * 0.7,
          minHeight: height * 0.06,
        ),
        child: Container(
          width: width * 0.7,
          height: height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            gradient: LinearGradient(
              colors: [Colors.white24, Colors.white38],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            border: Border.all(color: AppColors.textWhite, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "3",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: width * 0.02),
              Text(
                "Pending Approval",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
