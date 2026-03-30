import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/pages/haditspage.dart';
import 'package:quranteacher/students/lesson_feature/presentation_layer/screens/lessonscreen.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranwid.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/studenthomeworkscreen.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/sudentattendancescreen.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/teacherrequestscreen.dart';

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
              clickcontistd(
                0,
                width * 0.43,
                height * 0.2,
                "assets/images/quran.png",
                "Quran",
                "Read & Learn",
                AppColors.startgreen,
                AppColors.endgreen,
              ),
              clickcontistd(
                1,
                width * 0.43,
                height * 0.2,
                "assets/images/book.png",
                "Hadith",
                "Daily Wisdom",
                AppColors.islamicNavy600,
                AppColors.islamicNavy800,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clickcontistd(
                2,
                width * 0.43,
                height * 0.2,
                "assets/images/star.png",
                "Lessons",
                "Islamic Studies",
                AppColors.pink500,
                AppColors.pink700,
              ),
              clickcontistd(
                3,
                width * 0.43,
                height * 0.2,
                "assets/images/homework.png",
                "HomeWork",
                "2 Pending",
                Colors.orangeAccent,
                Colors.orange,
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              clickcontistd(
                4,
                width * 0.43,
                height * 0.22,
                "assets/images/family.png",
                "Teacher List",
                "Select related your course",
                Colors.lightBlue,
                Colors.blue,
              ),
              clickcontistd(
                5,
                width * 0.43,
                height * 0.22,
                "assets/images/atten.png",
                "Attandance List",
                "performance of attandance",
                Colors.deepOrangeAccent,
                Colors.deepOrange,
              ),
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
      onTap: () {
        if (index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Quranwid()),
          );
        } else if (index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Haditspage()),
          );
        } else if (index == 2) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Lessonscreen()),
          );
        } else if (index == 3) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StudentHomeworkScreen(),
            ),
          );
        } else if (index == 4) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TeacherRequestScreen(),
            ),
          );
        } else if (index == 5) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const StudentAttendanceScreen(),
            ),
          );
        }
      },
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
        duration: const Duration(milliseconds: 150),
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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(image),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Text(
                subtitles,
                style: const TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
