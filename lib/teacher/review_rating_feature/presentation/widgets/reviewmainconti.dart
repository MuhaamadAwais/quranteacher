import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Reviewmainconti extends StatelessWidget {
  const Reviewmainconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.textWhite.withOpacity(0.25),
        border: Border.all(width: 1, color: AppColors.textWhite),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "4.9",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star_border, color: AppColors.accent),
                      Icon(Icons.star_border, color: AppColors.accent),
                      Icon(Icons.star_border, color: AppColors.accent),
                      Icon(Icons.star_border, color: AppColors.accent),
                      Icon(Icons.star_border, color: AppColors.textWhite),
                    ],
                  ),
                  Text(
                    "127 reviews",
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontWeight: FontWeight.normal,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  ratingrow(width, height, "5", 0.98, "98"),
                  ratingrow(width, height, "4", 0.22, "22"),
                  ratingrow(width, height, "3", 0.2, "5"),
                  ratingrow(width, height, "2", 0.2, "2"),
                  ratingrow(width, height, "1", 0.0, "0"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget ratingrow(
  double width,
  double height,
  String position,
  double valueprog,
  String percentrating,
) {
  return Row(
    children: [
      Text(
        position,
        style: TextStyle(color: AppColors.textWhite, fontSize: 15),
      ),
      SizedBox(width: 4),
      Icon(Icons.star, color: AppColors.accent),
      SizedBox(width: 4),
      SizedBox(
        width: width * 0.23,
        height: height * 0.01,
        child: LinearProgressIndicator(
          minHeight: 2,
          value: valueprog,
          backgroundColor: AppColors.textWhite.withOpacity(0.27),
          color: AppColors.accent,
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      SizedBox(width: 4),
      Text(
        percentrating,
        style: TextStyle(color: AppColors.textWhite, fontSize: 15),
      ),
    ],
  );
}
