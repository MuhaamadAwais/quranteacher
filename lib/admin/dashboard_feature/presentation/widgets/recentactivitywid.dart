import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Recentactivitywid extends StatelessWidget {
  const Recentactivitywid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height * 0.6,
      child: Card(
        elevation: 5,
        color: AppColors.textWhite,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              actvityconti(
                width,
                height * 0.12,
                "Ahmaed Hassan",
                "Joined the platform",
                "12 mins ago",
              ),
              actvityconti(
                width,
                height * 0.12,
                "Sheikh Abdullah ",
                "pending approval",
                "12 mins ago",
              ),

              actvityconti(
                width,
                height * 0.12,
                "Shiekh Muhammad ",
                "Started a live class",
                "25 mins ago",
              ),

              actvityconti(
                width,
                height * 0.12,
                "Fatima Ali",
                "Completed Payment",
                "1 hour ago",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget actvityconti(
    double width,
    double height,
    String name,
    String purpose,
    String time,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: AppColors.switchBackground,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [AppColors.pink500, AppColors.pink700],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Icon(Icons.group, color: AppColors.textWhite),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      purpose,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),

                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
