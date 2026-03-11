import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Selectposition extends StatelessWidget {
  const Selectposition({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            "Student Reviews",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Spacer(),
          Container(
            width: 170,
            height: 35,
            decoration: BoxDecoration(
              color: AppColors.switchBackground.withOpacity(0.25),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Most Recent",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),
                Icon(Icons.arrow_downward, color: Colors.black, size: 18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
