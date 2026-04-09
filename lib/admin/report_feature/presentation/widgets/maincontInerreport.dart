import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Maincontinerreport extends StatelessWidget {
  const Maincontinerreport({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.group_outlined,
                "Total Users",
                "2,100",
                AppColors.topmiddle,
                AppColors.bottommiddle,
              ),
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.school_outlined,
                "Revenu ",
                "24",
                
                AppColors.topmiddle,
                AppColors.bottommiddle,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.videocam_outlined,
                "Total Classes",
                "86",
                
                AppColors.topmiddle,
                AppColors.bottommiddle,
              ),
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.attach_money,
                "Engagment",
                "125k",
                
                AppColors.topmiddle,
                AppColors.bottommiddle,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget deisgndata(
    double width,
    double height,
    IconData iconsselect,
    String title,
    String count,
    Color startcolor,
    Color endcolor,
  ) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 7),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [startcolor, endcolor],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Icon(
                      iconsselect,
                      size: 24,
                      color: AppColors.textWhite,
                    ),
                  ),
                ),

                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),

                Text(
                  count,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 05,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
