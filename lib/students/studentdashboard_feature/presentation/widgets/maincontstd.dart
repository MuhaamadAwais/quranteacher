import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
class Maincontstd extends StatelessWidget {
  const Maincontstd({super.key});

  @override
  Widget build(BuildContext context) {
    double heigth = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: heigth * 0.25,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.4),
                  ),
                  child: Icon(
                    Icons.video_camera_back_outlined,
                    color: AppColors.textWhite,
                  ),
                ),
              ],
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "TODAY's CLASS",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Tajweed Rules",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "- Noon",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Text(
                  "Sakianh",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.lock_clock, color: AppColors.textWhite),
                    Text("4:00PM - 5:00 PM",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                  ),),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 35,
                  width: width*0.25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                   color: AppColors.textWhite
                  ),
                  child: Center(
                    child: Text(
                      "Join Now",
                      style: TextStyle(
                        color: AppColors.backgroundStart,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
