import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Topcontiitems extends StatelessWidget {
  const Topcontiitems({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: height * 0.1,
            width: height * 0.1,
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              shape: BoxShape.circle,
            ),
            child: Center(child: Icon(Icons.propane)),
          ),

          Text(
            "Sheikh Muhammad",
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          Text(
            "Sheikhmuhammad@example.com",
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
              fontSize: 15,
            ),
          ),

          Container(
            width: width * 0.37,
            height: height * 0.08,
            decoration: BoxDecoration(
              color: AppColors.textWhite.withOpacity(0.15),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.star, color: Colors.yellow),
                Text(
                  "4.9 Rating",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                contidesgn(48, "Students", height * 0.1, width * 0.3),
                contidesgn(156, "Classes", height * 0.1, width * 0.3),
                contidesgn(15, "Earned", height * 0.1, width * 0.3),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget contidesgn(int numbers, String property, double height, double width) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.textWhite.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            numbers.toString(),
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          Text(
            property,
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
