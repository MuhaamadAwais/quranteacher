import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';


class Itemsoflist extends StatelessWidget {
  const Itemsoflist({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        contidesigncertification(width, height * 0.4),
        contidesigncertification(width, height * 0.4),
        contidesigncertification(width, height * 0.4),
        contidesigncertification(width, height * 0.4),
      ],
    );
  }
}

Widget contidesigncertification(double width, double height) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: width,
      height: height * 0.9,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            // Top Gradient
            Container(
              width: double.infinity,
              height: height * 0.45,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                gradient: LinearGradient(
                  colors: [AppColors.backgroundStart, AppColors.backgroundEnd],
                ),
              ),
            ),

            // Bottom White
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: height * 0.45,
                decoration: BoxDecoration(
                  color: AppColors.textWhite,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 30,
              right: 0,

              child: Text(
                "Ijazah in Quran Recitation",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textWhite,
                  fontSize: 17,
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 60,
              right: 0,
              child: Text(
                "Al-Azhar University",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: AppColors.textWhite,
                  fontSize: 15,
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 90,
              right: 0,
              child: Row(
                children: [
                  Icon(Icons.calendar_month, color: AppColors.textWhite),
                  SizedBox(width: 4),
                  Text(
                    "june 2020",
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: AppColors.textWhite,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),

            Positioned(
              top: 140,
              left: 20,
              child: Text(
                "complete chain of transmission (Sanad) \n with hafs recitation",
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),

            Positioned(
              left: 20,
              top: 200,
              child: Row(
                children: [
                  Container(
                    width: width * 0.4,
                    height: height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: AppColors.switchBackground,
                      ),
                      color: AppColors.switchBackground.withOpacity(0.25),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.description,
                            color: AppColors.switchBackground,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "View Details",
                            style: TextStyle(
                              color: AppColors.switchBackground,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // downlaod
                  SizedBox(width: 5),
                  Container(
                    width: width * 0.4,
                    height: height * 0.15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: AppColors.backgroundStart,
                      ),
                      color: AppColors.backgroundStart.withOpacity(0.25),
                    ),
                    child: Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.download,
                            color: AppColors.backgroundStart,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Download",
                            style: TextStyle(
                              color: AppColors.backgroundStart,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
