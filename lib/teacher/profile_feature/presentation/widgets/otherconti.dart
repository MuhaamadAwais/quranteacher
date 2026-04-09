import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/pages/accountsettings.dart';
import 'package:quranteacher/teacher/certifications_features/presentation/pages/certificationsteacher.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/pages/review_rating.dart';

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
          
          SizedBox(height: 10),

          contineroption(
            1,
            width,
            height * 0.1,
            Colors.white,
            Icons.settings_outlined,
            "Account Settings",
            () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => Accountsettings()),
              );
            },
          ),
          SizedBox(height: 10),

          contineroption(
            2,
            width,
            height * 0.1,
            Colors.white,
            Icons.verified_outlined,
            "Certifications",
            () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Certificationsteacher(),
                ),
              );
            },
          ),
          SizedBox(height: 10),
          contineroption(
            3,
            width,
            height * 0.1,
            AppColors.textWhite,
            Icons.star_border_outlined,
            "Review & Ratings",
            () {
                Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ReviewRating(),
                ),
              );
            },
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
    VoidCallback onTabfun,
  ) {
    return GestureDetector(
      onTap: onTabfun,
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
                    color: AppColors.toplast,
                  ),
                  child: Center(child: Icon(icons, color: iconcolor, size: 24)),
                ),
              ),

              Expanded(
                flex: 3,
                child: Text(
                  textname,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
