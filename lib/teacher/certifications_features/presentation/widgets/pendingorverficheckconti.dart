import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Pendingorverficheckconti extends StatelessWidget {
  const Pendingorverficheckconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: width * 0.4,
          height: height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.textWhite.withOpacity(0.25),
            border: Border.all(width: 2, color: AppColors.textWhite),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "4",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "verified",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
        // pending
        Container(
          width: width * 0.4,
          height: height * 0.1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.textWhite.withOpacity(0.25),
            border: Border.all(width: 2, color: AppColors.textWhite),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                Text(
                  "pending",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
