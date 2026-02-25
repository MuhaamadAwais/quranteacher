import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/pages/haditspage.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranwid.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/pages/studentdashboardpage.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(body: Center(child: Bottomnavi())),
    ),
  );
}

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
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildnavItem(Icons.home_outlined, "Home", 0),
              buildnavItem(Icons.home, "Quran", 1),
              buildnavItem(Icons.book_outlined, "Hadith", 2),
              buildnavItem(Icons.school_outlined, "Lessons", 3),
              buildnavItem(Icons.person_2_outlined, "Profile", 4),
            ],
          ),
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
            Icon(
              icon,
              size: 28,
              color: isSelected
                  ? AppColors.backgroundStart
                  : Colors.black, // white text on green
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
