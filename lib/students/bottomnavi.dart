import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/pages/haditspage.dart';
import 'package:quranteacher/students/lesson_feature/presentation_layer/screens/lessonscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/screens/profilescreen.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranwid.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/pages/studentdashboardpage.dart';

class Bottomnavi extends StatefulWidget {
  const Bottomnavi({super.key});

  @override
  State<Bottomnavi> createState() => _BottomnaviState();
}

class _BottomnaviState extends State<Bottomnavi> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    Studentdashboardpage(),
    Quranwid(),
    Haditspage(),
    Lessonscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: screens[selectedIndex]),
      bottomNavigationBar: Container(
        height: 75,
        width: double.infinity,
        color: AppColors.textWhite,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(child: buildnavItem(Icons.home_outlined, "Home", 0)),
            Expanded(child: buildnavItem(Icons.menu_book, "Quran", 1)),
            Expanded(child: buildnavItem(Icons.book_outlined, "Hadith", 2)),
            Expanded(child: buildnavItem(Icons.school_outlined, "Lessons", 3)),
            Expanded(child: buildnavItem(Icons.person_2_outlined, "Profile", 4)),
          ],
        ),
      ),
    );
  }

  Widget buildnavItem(IconData icon, String label, int index) {
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
