import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Verificationconti extends StatelessWidget {
  const Verificationconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.islamicNavy500.withOpacity(0.25),
          border: Border.all(width: 1, color: AppColors.islamicNavy500),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.islamicNavy600.withOpacity(0.25),
                  border: Border.all(width: 1, color: AppColors.islamicNavy500),
                ),
                child: Center(
                  child: Icon(
                    Icons.badge_sharp,
                    color: AppColors.islamicNavy500,
                  ),
                ),
              ),
              SizedBox(width: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Verfication Process",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "All certifications are verified by our\nadmin team within 24-hours verified\nverified certificates boost your\nprofile cerdibility",
                    style: TextStyle(
                      color: AppColors.islamicNavy600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
