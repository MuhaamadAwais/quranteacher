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
                height * 0.18,
                Icon(Icons.auto_stories, color: Colors.white, size: 24),
                "Quran",
                "Read & Learn",
                AppColors.toplast,
                AppColors.bottomlast,
              ),
              clickcontistd(
                1,
                width * 0.43,
                height * 0.18,
                Icon(
                  Icons.format_align_center_outlined,
                  color: Colors.white,
                  size: 24,
                ),
                "Hadith",
                "Daily Wisdom",
                AppColors.toplast,
                AppColors.bottomlast,
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
                height * 0.18,
                Icon(Icons.school, color: Colors.white, size: 24),
                "Lessons",
                "Islamic Studies",
                AppColors.toplast,
                AppColors.bottomlast,
              ),
              clickcontistd(
                3,
                width * 0.43,
                height * 0.18,
                Icon(Icons.assignment, color: Colors.white, size: 24),
                "HomeWork",
                "2 Pending",
                AppColors.toplast,
                AppColors.bottomlast,
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
                height * 0.18,
                Icon(Icons.group, color: Colors.white, size: 24),
                "Teacher List",
                "Select related your  \n          course",
                AppColors.toplast,
                AppColors.bottomlast,
              ),
              clickcontistd(
                5,
                width * 0.43,
                height * 0.18,
                Icon(Icons.check_circle, color: Colors.white, size: 24),
                "Attan.. List",
                "performance of  \n     attandance",
                AppColors.toplast,
                AppColors.bottomlast,
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
    Icon icon, // Tag image
    //  String iconImage, // Main icon
    String name,
    String subtitle,
    Color topColor,
    Color bottomColor,
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
      child: Card(
        elevation: 4,
        shadowColor: Newcolors.green500,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOutBack,
          transform: Matrix4.translationValues(0, isPressed ? -12 : 0, 0),
          width: width,
          height: height,
          decoration: BoxDecoration(
            // Simple hanging tag shape with border radius
            borderRadius: BorderRadius.all(Radius.circular(15)),
            gradient: LinearGradient(
              colors: [topColor, bottomColor],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: topColor.withOpacity(isPressed ? 0.6 : 0.4),
                blurRadius: isPressed ? 30 : 18,
                offset: Offset(0, isPressed ? 12 : 8),
                spreadRadius: 2,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 12,
                offset: Offset(2, 4),
              ),
            ],
            border: Border(
              bottom: BorderSide(
                color: const Color.fromARGB(132, 211, 221, 212),
                width: 4,
              ),
            ),
            // Gold border for Islamic premium look
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              // Tag image (left top - hanging style)
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: height * 0.35,
                  width: width * 0.35,
                  decoration: BoxDecoration(
                    gradient: AppColors.backgroundgradient,
                    shape: BoxShape.circle,
                  ),
                  child: icon,
                ),
              ),
              SizedBox(height: height * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    letterSpacing: 0.5,
                    shadows: const [
                      Shadow(
                        blurRadius: 3,
                        color: Colors.black45,
                        offset: Offset(1, 1),
                      ),
                    ],
                  ),
                ),
              ),

              // Subtitle
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.92),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    height: 1.3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget clickcontistd({
  required int index,
  required double width,
  required double height,
  required String tagImage, // Tag image
  required String iconImage, // Main icon
  required String name,
  required String subtitle,
  required Color topColor,
  required Color bottomColor,
  required Alignment alignment1,
  required Alignment alignment2,
  bool isPressed = false,
}) {
  return AnimatedContainer(
    duration: const Duration(milliseconds: 250),
    curve: Curves.easeOutBack,
    transform: Matrix4.translationValues(0, isPressed ? -12 : 0, 0),
    width: width,
    height: height,
    decoration: BoxDecoration(
      // Simple hanging tag shape with border radius
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(30), // Left hanging tag
        topRight: Radius.circular(25),
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(30), // Bottom notch
      ),
      gradient: LinearGradient(
        colors: [topColor, bottomColor],
        begin: alignment1,
        end: alignment2,
      ),
      boxShadow: [
        BoxShadow(
          color: topColor.withOpacity(isPressed ? 0.6 : 0.4),
          blurRadius: isPressed ? 30 : 18,
          offset: Offset(0, isPressed ? 12 : 8),
          spreadRadius: 2,
        ),
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          blurRadius: 12,
          offset: Offset(2, 4),
        ),
      ],
      // Gold border for Islamic premium look
      border: Border.all(color: Colors.white, width: 3),
    ),
    child: Column(
      children: [
        SizedBox(height: 10),

        SizedBox(height: height * 0.03),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            fontSize: 16,
            letterSpacing: 0.5,
            shadows: const [
              Shadow(
                blurRadius: 3,
                color: Colors.black45,
                offset: Offset(1, 1),
              ),
            ],
          ),
        ),

        // Subtitle
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.white.withOpacity(0.92),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.3,
          ),
        ),
      ],
    ),
  );
}
