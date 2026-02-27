import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/content_feature/presentation/pages/contentpages.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/pages/earningpages.dart';
import 'package:quranteacher/teacher/profile_feature/presentation/pages/profilepages.dart';
import 'package:quranteacher/teacher/students_feature/presentation/pages/studentspages.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/pages/teacherdashboardpage.dart';


class Bottomnaviteacher extends StatefulWidget {
  const Bottomnaviteacher({super.key});

  @override
  State<Bottomnaviteacher> createState() => _BottomnaviteacherState();
}

final List<Widget> selectitemss = [
  Teacherdashboardpage(),
  Studentspages(),
  Contentpages(),
  Earningpages(),
  Profilepages(),
];
int selectedIndex = 0;

class _BottomnaviteacherState extends State<Bottomnaviteacher> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: selectitemss[selectedIndex],
        bottomNavigationBar: Container(
          height: 70,
          width: double.infinity,
          color: AppColors.textWhite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              botommteacherwid(
                index: 0,
                label: "Home",
                icon: Icons.home_outlined,
              ),
              botommteacherwid(
                index: 1,
                label: "Students",
                imagepath: "assets/images/students.png",
              ),
              botommteacherwid(
                index: 2,
                label: "Content",
                imagepath: "assets/images/content.png",
              ),
              botommteacherwid(
                index: 3,
                label: "Earning",
                icon: Icons.book_outlined,
              ),
              botommteacherwid(
                index: 4,
                label: "Profile",
                icon: Icons.person_2_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget botommteacherwid({
    required int index,
    required String label,
    IconData? icon,
    String? imagepath,
  }) {
    bool isSelected = selectedIndex == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        decoration: BoxDecoration(
          color: isSelected
              ? Colors.green.withOpacity(0.15) // very light green for container
              : Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.green.withOpacity(0.3),
                    blurRadius: 15,
                    spreadRadius: 2,
                    offset: Offset(4, 4),
                  ),
                  BoxShadow(
                    color: Colors.white,
                    blurRadius: 15,
                    spreadRadius: 1,
                    offset: Offset(-4, -4),
                  ),
                ]
              : [],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null)
              Icon(
                icon,
                size: 28,
                color: isSelected ? AppColors.backgroundStart : Colors.black,
              )
            else if (imagepath != null)
              Image.asset(
                imagepath,
                height: 28,
                width: 28,
                color: isSelected ? AppColors.backgroundStart : Colors.black,
              ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 12,
                color: isSelected ? AppColors.backgroundStart : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
