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
          color: AppColors.toplast.withOpacity(0.25),
          border: Border.all(width: 2, color: AppColors.toplast),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 10),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.toplast.withOpacity(0.25),
                  border: Border.all(width: 1, color: AppColors.toplast),
                ),
                child: Center(
                  child: Icon(
                    Icons.workspace_premium,
                    color: AppColors.toplast,
                    size: 24,
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
                     fontSize: 16
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "All certifications are verified by our\nadmin team within 24-hours verified\nverified certificates boost your\nprofile cerdibility",
                    style: TextStyle(
                      color: AppColors.toplast,
                      fontWeight: FontWeight.bold,
                      fontSize: 14
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
