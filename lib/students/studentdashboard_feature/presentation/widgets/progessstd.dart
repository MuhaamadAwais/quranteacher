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
          color: const Color.fromARGB(73, 5, 150, 104),
          elevation: 6,
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
                        color: AppColors.greenDark,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Spacer(),
                    Icon(Icons.trending_up, color: AppColors.greenDark),
                  ],
                ),

                const SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    contidesign(
                      Colors.white24,
                      AppColors.textWhite,
                      "18",
                      "Surahs",
                      height * 0.08,
                      width * 0.15,
                    ),
                    contidesign(
                      Colors.white24,
                      AppColors.textWhite,
                      "42",
                      "Classes",
                      height * 0.08,
                      width * 0.15,
                    ),
                    contidesign(
                      Colors.white24,
                      AppColors.textWhite,
                      "95%",
                      "Attendance",
                      height * 0.08,
                      width * 0.15,
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
    double height,
    double width,
  ) {
    return Column(
      children: [
        Container(
          height: height,
          width: width,
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
          style: const TextStyle(color: Colors.white, fontSize: 13),
        ),
      ],
    );
  }
}
