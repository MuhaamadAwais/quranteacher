import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Classeshourlyconti extends StatelessWidget {
  const Classeshourlyconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            width: width * 0.45,
            height: height * 0.14,
            decoration: BoxDecoration(
              color: AppColors.backgroundStart.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Classes This \nMonth",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    "42",
                    style: TextStyle(
                      color: AppColors.backgroundStart,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Spacer(),

          Container(
            width: width * 0.45,
            height: height * 0.14,
            decoration: BoxDecoration(
              color: AppColors.islamicNavy800.withOpacity(0.15),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hourly Rate",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),

                  SizedBox(height: 8),
                  Text(
                    "58",
                    style: TextStyle(
                      color: AppColors.islamicNavy800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
