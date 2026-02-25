import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';



class Studentdesign extends StatelessWidget {
  const Studentdesign({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.3,
        child: Card(
          elevation: 10,
          color: AppColors.textWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.backgroundStart,
                          ),
                          child: Icon(
                            Icons.admin_panel_settings,
                            color: AppColors.textWhite,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ahmad Hassan"),
                            Row(
                              children: [
                                Icon(Icons.trending_up),
                                Text("42 Classes"),
                                SizedBox(width: 10),
                                Icon(Icons.star, color: AppColors.accent),
                                Text("4.8"),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: AppColors.islamicNavy400,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.message,
                              color: AppColors.islamicNavy700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Progress",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "85%",
                        style: TextStyle(
                          color: AppColors.backgroundStart,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    backgroundColor: AppColors.backgroundVia,
                    value: 85,
                  ),

                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        "Attendance",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "95%",
                        style: TextStyle(
                          color: AppColors.islamicNavy500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    backgroundColor: AppColors.islamicNavy500,
                    value: 95,
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
