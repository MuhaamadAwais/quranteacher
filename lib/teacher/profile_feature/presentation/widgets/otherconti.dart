import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Otherconti extends StatefulWidget {
  const Otherconti({super.key});

  @override
  State<Otherconti> createState() => _OthercontiState();
}

class _OthercontiState extends State<Otherconti> {
  int selectedindex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          contineroption(
            0,
            width,
            height * 0.1,
            Colors.black,
            Icons.settings_outlined,
            "Account Settings",
          ),
          SizedBox(height: 10),

          contineroption(
            1,
            width,
            height * 0.1,
            Colors.red,
            Icons.verified_outlined,
            "Certifications",
          ),
          SizedBox(height: 10),
          contineroption(
            2,
            width,
            height * 0.1,
            AppColors.islamicNavy,
            Icons.star_border_outlined,
            "Review & Ratings",
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget contineroption(
    int index,
    double width,
    double height,
    Color iconcolor,
    IconData icons,
    String textname,
  ) {
    return GestureDetector(
      onTapUp: (details) {
        setState(() {
          selectedindex = index;
        });
      },

      onTapCancel: () {
        setState(() {
          selectedindex = index;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        elevation: selectedindex == index ? 10 : 5,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.switchBackground,
                  ),
                  child: Center(child: Icon(icons, color: iconcolor, size: 38)),
                ),
              ),

              Expanded(
                flex: 3,
                child: Text(
                  textname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              Expanded(
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.switchBackground,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
