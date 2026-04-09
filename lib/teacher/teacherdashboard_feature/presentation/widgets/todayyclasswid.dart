import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';

class Todayyclasswid extends StatelessWidget {
  const Todayyclasswid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 4,
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
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Row(
                    children: [
                      Icon(
                        Icons.calendar_month_outlined,
                        color: AppColors.toplast,
                      ),
                      Text(
                        "Today's Classes",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Text(
                        "3 classes",
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 30),
                classconti(width, height * 0.13),
                SizedBox(height: 10),
                classconti(width, height * 0.13),
                SizedBox(height: 10),
                classconti(width, height * 0.13),
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
        color: AppColors.toplast.withOpacity(0.25),
        border: Border.all(color: AppColors.toplast, width: 2),
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
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: AppColors.toplast.withOpacity(0.5),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Center(
                    child: Text(
                      "UpComing",
                      style: TextStyle(
                        color: Newcolors.background,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              children: [
                Icon(Icons.access_time, color:  Colors.white,size: 24,),
                Text(
                  "10:00 AM",
                  style: TextStyle(color:  Colors.white,fontSize: 14),
                ),
                SizedBox(width: 20),
                Icon(Icons.group_outlined, color:  Colors.white,size: 24,),
                Text(
                  "6 Students",
                  style: TextStyle(color: Colors.white,fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
