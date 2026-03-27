import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Showdatacontiwid extends StatelessWidget {
  const Showdatacontiwid({super.key});

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
                "Total Students",
                "48",
                AppColors.startgreen,
                AppColors.endgreen,
                "+5",
              ),
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.videocam_outlined,
                "Classes Today",
                "3",
                AppColors.islamicNavy600,
                AppColors.islamicNavy800,
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
                Icons.attach_money_outlined,
                "The Month ",
                "2,450",
                Colors.orange,
                Colors.deepOrangeAccent,
                "+12 %",
              ),
              deisgndata(
                width * 0.46,
                height * 0.17,
                Icons.star_outline,
                "Rating",
                "4.9",
                AppColors.pink500,
                AppColors.pink700,
                "+0.2 ",
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
    Color endcolor, [
    String? pointnum,
  ]) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        elevation: 5,
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
                      size: 35,
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

                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: count,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          TextSpan(
                            text: " ", // simple space
                            style: TextStyle(
                              fontSize: 25,
                            ), // optional chhota space
                          ),
                          TextSpan(
                            text: pointnum,
                            style: TextStyle(
                              color: AppColors.backgroundStart,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
