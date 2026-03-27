import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/students_feature/presentation/pages/studentmodelprogress.dart';

class Studentdesign extends StatelessWidget {
  final Studentmodelprogress studentmodelprogress;
  const Studentdesign({super.key, required this.studentmodelprogress});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.32,
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
                            gradient: LinearGradient(
                              colors: [
                                AppColors.startgreen,
                                AppColors.endgreen,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.person,
                              color: AppColors.textWhite,
                              size: 45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(studentmodelprogress.studentName),
                            Row(
                              children: [
                                Icon(Icons.trending_up),
                                Text(
                                  "${studentmodelprogress.totalClassess} Classes",
                                ),
                                SizedBox(width: 10),
                                Icon(Icons.star, color: AppColors.accent),
                                Text(
                                  studentmodelprogress.teacherRating.toString(),
                                ),
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
                            color: AppColors.islamicNavy600.withOpacity(0.5),
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Icon(
                              Icons.chat_bubble_outline,
                              color: AppColors.islamicNavy800,
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
                        "${studentmodelprogress.progressActualtext}%",
                        style: TextStyle(
                          color: AppColors.backgroundStart,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    backgroundColor: AppColors.islamicNavy500.withOpacity(0.25),
                    color: AppColors.startgreen,
                    value: studentmodelprogress.progressActual,
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(20),
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
                        "${studentmodelprogress.progressAttendancetext} %",
                        style: TextStyle(
                          color: AppColors.islamicNavy800,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  LinearProgressIndicator(
                    color: AppColors.startgreen,
                    backgroundColor: AppColors.islamicNavy500.withOpacity(0.25),
                    value: studentmodelprogress.progressAttendance,
                    minHeight: 10,
                    borderRadius: BorderRadius.circular(20),
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
