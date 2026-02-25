import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Progessstd extends StatelessWidget {
  const Progessstd({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height * 0.23,
        width: width,
        child: Card(
          color: AppColors.textWhite,
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Your Progress",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.trending_up, color: AppColors.backgroundStart),
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contidesign(
                      AppColors.islamicEmerald,
                      AppColors.backgroundEnd,
                      "18",
                      "Surahs",
                    ),
                    contidesign(
                      AppColors.islamicNavy400,
                      AppColors.islamicNavy,
                      "42",
                      "Classes",
                    ),
                    contidesign(
                      AppColors.sparkle,
                      AppColors.accent,
                      "95%",
                      "Attendance",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget contidesign(
    Color color,
    Color textcol,
    String number,
    String contitext,
  ) {
    return Column(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Center(
            child: Text(
              number,
              style: TextStyle(
                color: textcol,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          contitext,
          style: const TextStyle(color: Colors.black, fontSize: 13),
        ),
      ],
    );
  }
}
