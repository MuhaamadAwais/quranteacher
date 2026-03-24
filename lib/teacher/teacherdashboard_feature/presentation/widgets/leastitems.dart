import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/pages/assignwork.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/pages/earningpages.dart';
import 'package:quranteacher/teacher/students_feature/presentation/pages/studentspages.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/formteacherequestsscreen.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/teacherattendancescreen.dart';

class Leastitems extends StatefulWidget {
  const Leastitems({super.key});

  @override
  State<Leastitems> createState() => _LeastitemsState();
}

class _LeastitemsState extends State<Leastitems> {
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
                Icons.group_outlined,
                "My Students",
                "Manage Students",
                AppColors.secondary,
                AppColors.islamicGreen,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Studentspages()),
                  );
                },
              ),

              clickcontistd(
                1,
                width * 0.43,
                height * 0.2,
                Icons.trending_up,
                "Assign Work",
                "create homework",
                AppColors.pink500,
                AppColors.pink700,
                () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => Assignwork()));
                },
              ),
            ],
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              clickcontistd(
                2,
                width * 0.43,
                height * 0.2,
                Icons.videocam_outlined,
                "Lessons",
                "Manage Lessons",

                Colors.orange,
                Colors.deepOrangeAccent,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Studentspages()),
                  );
                },
              ),

              clickcontistd(
                3,
                width * 0.43,
                height * 0.2,
                Icons.attach_money,
                "Earning",
                "View Income",
                AppColors.islamicNavy500,
                AppColors.islamicNavy600,
                () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Earningpages()),
                  );
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              clickcontistd(
                4,
                width * 0.43,
                height * 0.22,
                Icons.group_outlined,
                "Student Request List",
                "All students request",
                Colors.blue,
                Colors.lightBlue,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Formteacherequestsscreen(),
                    ),
                  );
                },
              ),
              clickcontistd(
                5,
                width * 0.43,
                height * 0.23,
                Icons.calendar_month,
                "All Attandance List",
                "Student attan..",
                Colors.teal,
                Colors.tealAccent,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TeacherAttendanceScreen(
                        sessionName: "Surah Al-Fatiha",
                      ),
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
      onTap: onTabFunction,
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
        transform: Matrix4.translationValues(0, isPressed ? -25 : 0, 0),
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
          padding: const EdgeInsets.all(12.0),
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
                    child: Icon(
                      iconsdata,
                      color: AppColors.textWhite,
                      size: 32,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                name,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                subtitles,
                style: TextStyle(color: AppColors.textWhite, fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
