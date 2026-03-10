import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Platformprofence extends StatelessWidget {
  const Platformprofence({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.38,
        child: Card(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    "Platform Performance",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 10),

                  // students satifications
                  Row(
                    children: [
                      Text(
                        "Students Satisfaction",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "4.8/5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: Colors.white,
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.backgroundStart,
                    ),
                  ),
                  SizedBox(height: 10),
                  // teacher rating
                  Row(
                    children: [
                      Text(
                        "Teacher Rating",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "4.8/5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: Colors.white,
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.backgroundStart,
                    ),
                  ),
                  // class
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Class Completion",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "4.8/5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: Colors.white,
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.backgroundStart,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Active Users",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "4.8/5",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                  LinearProgressIndicator(
                    minHeight: 8,
                    backgroundColor: Colors.white,
                    value: 0.8,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.backgroundStart,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
