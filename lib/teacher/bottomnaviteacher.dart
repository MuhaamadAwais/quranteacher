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

class _BottomnaviteacherState extends State<Bottomnaviteacher> {
  int selectedIndex = 0;

  final List<Widget> selectitemss = [
    Teacherdashboardpage(),
    Studentspages(),
    Contentpages(),
    Earningpages(),
    Profilepages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: selectitemss[selectedIndex]),
      bottomNavigationBar: Container(
        height: 75,
        width: double.infinity,
        color: AppColors.textWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: botommteacherwid(
                index: 0,
                label: "Home",
                icon: Icons.home_outlined,
              ),
            ),
            Expanded(
              child: botommteacherwid(
                index: 1,
                label: "Students",
               icon: Icons.group_outlined,
              ),
            ),
            Expanded(
              child: botommteacherwid(
                index: 2,
                label: "Content",
                imagepath: "assets/images/content.png",
              ),
            ),
            Expanded(
              child: botommteacherwid(
                index: 3,
                label: "Earning",
                imagepath: "assets/images/profit.png",
              ),
            ),
            Expanded(
              child: botommteacherwid(
                index: 4,
                label: "Profile",
                icon: Icons.person_2_outlined,
              ),
            ),
          ],
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
                    color: AppColors.toplast.withOpacity(0.3),
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
                size: 24,
                color: isSelected ? AppColors.toplast : Colors.black,
              )
            else if (imagepath != null)
              Image.asset(
                imagepath,
                height: 28,
                width: 28,
                color: isSelected ? AppColors.toplast : Colors.black,
              ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontSize: 10,
                color: isSelected ? AppColors.toplast : Colors.black,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
