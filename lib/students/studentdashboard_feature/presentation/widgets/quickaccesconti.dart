import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
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
                height * 0.22,
                Icons.auto_stories,
                "Quran",
                "Read & Learn",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Quranwid()));
                },
              ),
              clickcontistd(
                1,
                width * 0.43,
                height * 0.22,
                Icons.format_align_center_outlined,
                "Hadith",
                "Daily Wisdom",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Haditspage()));
                },
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
                height * 0.22,
                Icons.school_outlined,
                "Lessons",
                "Islamic Studies",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Lessonscreen()),
                  );
                },
              ),
              clickcontistd(
                3,
                width * 0.43,
                height * 0.22,
                Icons.assignment,
                "HomeWork",
                "2 Pending",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StudentHomeworkScreen(),
                    ),
                  );
                },
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
                Icons.group,
                "Teacher List",
                "Select related course",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => StudentAttendanceScreen(),
                    ),
                  );
                },
              ),
              clickcontistd(
                5,
                width * 0.43,
                height * 0.22,
                Icons.check_circle,
                "Attan.. List",
                "perf attandance",
                AppColors.toplast,
                AppColors.bottomlast,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => TeacherRequestScreen(),
                    ),
                  );
                },
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
    IconData iconsdata,
    String name,
    String subtitles,
    Color topcolor,
    Color bottomcolor,
    VoidCallback onTabFunction,
  ) {
    bool isPressed = pressedIndex == index;

    return GestureDetector(
      onTap: onTabFunction, // 👈 yahan direct function call
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
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOutBack,
        transform: Matrix4.translationValues(0, isPressed ? -12 : 0, 0),
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
              color: topcolor.withOpacity(isPressed ? 0.6 : 0.4),
              blurRadius: isPressed ? 25 : 15,
              offset: Offset(0, isPressed ? 10 : 6),
            ),
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Icon Circle
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.15),
                ),
                child: Center(
                  child: Icon(iconsdata, color: Colors.white, size: 26),
                ),
              ),

              const SizedBox(height: 12),

              // Title
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),

              // Subtitle
              Text(
                subtitles,
                style: const TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
