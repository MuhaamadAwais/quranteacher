import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Approvalcontiwid extends StatelessWidget {
  const Approvalcontiwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.08,
      decoration: BoxDecoration(
        color: AppColors.textWhite.withOpacity(0.25),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.textWhite, width: 2),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "3",
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          SizedBox(width: 5),
          Text(
            "Pending Approval",
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
