import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Hadiesconti extends StatelessWidget {
  const Hadiesconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.35,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.textWhite.withOpacity(0.15),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Text(
                "قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم : الْمُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُونَ مِنْ لِسَانِهِ وَيَدِهِ",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "   The Prophet (ﷺ) said, A Muslim is the one who avoids harming Muslims with his tongue and hands.",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            Text(
              "Sahih Bukhari - 6011",
              style: TextStyle(color: AppColors.textWhite),
            ),
          ],
        ),
      ),
    );
  }
}
