import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Classcontiwid extends StatelessWidget {
  const Classcontiwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.textWhite.withOpacity(0.15),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.deepOrangeAccent],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(
                size: 35,
                Icons.video_call_outlined,
                color: AppColors.textWhite,
              ),
            ),
          ),

          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Start Live Class",
                  style: TextStyle(color: AppColors.textWhite, fontSize: 20),
                ),
                Text(
                  "Begin teaching now",
                  style: TextStyle(color: AppColors.textWhite, fontSize: 15),
                ),
              ],
            ),
          ),

          Expanded(
            flex: 2,
            child: Icon(Icons.arrow_forward_ios, color: AppColors.textWhite),
          ),
        ],
      ),
    );
  }
}
