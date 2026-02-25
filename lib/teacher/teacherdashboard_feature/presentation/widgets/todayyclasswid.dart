import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/classcontiwid.dart';

class Todayyclasswid extends StatelessWidget {
  const Todayyclasswid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: Container(
          width: width,
          height: height * 0.55,
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),

            child: Column(
              children: [
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month_outlined,
                      color: AppColors.islamicNavy800,
                    ),
                    Text(
                      "Today's Classes",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    Text(
                      "3 classes",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ],
                ),


                SizedBox(height: 30),
                classconti(width, height * 0.12),
                SizedBox(height: 10),
                classconti(width, height * 0.12),
                SizedBox(height: 10),
                classconti(width, height * 0.12),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget classconti(double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: AppColors.islamicNavy700.withOpacity(0.15),
        border: Border.all(color: AppColors.islamicNavy800, width: 3),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  "Taweed Basics",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 130,
                  decoration: BoxDecoration(
                    color: AppColors.islamicNavy500,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "UpComing",
                      style: TextStyle(
                        color: AppColors.islamicNavy700,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.watch, color: AppColors.switchBackground),
                Text("10:00 AM"),
                SizedBox(width: 20),
                Icon(Icons.group_outlined, color: AppColors.switchBackground),
                Text("6 Students"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
