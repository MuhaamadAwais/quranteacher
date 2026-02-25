import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';




class Quickaccesconti extends StatefulWidget {
  const Quickaccesconti({super.key});

  @override
  State<Quickaccesconti> createState() => _QuickaccescontiState();
}

class _QuickaccescontiState extends State<Quickaccesconti> {
  int pressedIndex = -1;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clickcontistd(0, width * 0.43, height * 0.2,
                  "assets/images/quran.png", "Quran", "Read & Learn",
                  AppColors.secondary, AppColors.islamicGreen),

              clickcontistd(1, width * 0.43, height * 0.2,
                  "assets/images/book.png", "Hadith", "Daily Wisdom",
                  AppColors.islamicNavy500, AppColors.islamicNavy600),
            ],
          ),

          SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clickcontistd(2, width * 0.43, height * 0.2,
                  "assets/images/star.png", "Lessons", "Islamic Studies",
                  AppColors.pink500, AppColors.pink700),

              clickcontistd(3, width * 0.43, height * 0.2,
                  "assets/images/homework.png", "HomeWork", "2 Pending",
                  Colors.orangeAccent, Colors.orange),
            ],
          ),
        ],
      ),
    );
  }
 
  Widget clickcontistd(
    int index,
    double width,
    double height,
    String image,
    String name,
    String subtitles,
    Color topcolor,
    Color bottomcolor,
  ) {
    bool isPressed = pressedIndex == index;

    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          pressedIndex = index;
        });
      },
      onTapUp: (_) {
        setState(() {
          pressedIndex = -1;
        });
      },
      onTapCancel: () {
        setState(() {
          pressedIndex = -1;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 150),
        transform: Matrix4.translationValues(0, isPressed ? -18 : 0, 0),
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [topcolor, bottomcolor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: isPressed ? 20 : 8,
              offset: Offset(0, isPressed ? 10 : 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.textWhite.withOpacity(0.15),
                ),
                child: Center(
                  // child: Icon(icon, color: AppColors.textWhite),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(image),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                subtitles,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}