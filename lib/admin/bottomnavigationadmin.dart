import 'package:flutter/material.dart';
import 'package:quranteacher/admin/content_feature/presentation/pages/contentadminpage.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/pages/dashboardadmin.dart';
import 'package:quranteacher/admin/report_feature/presentation/pages/reportadminpage.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/pages/teacheradminpage.dart';
import 'package:quranteacher/admin/user_feature/presentation/pages/useradminpage.dart';
import 'package:quranteacher/appcolors.dart';
void main(){
  runApp(MaterialApp(home: Bottomnavigationadmin(),));
}

class Bottomnavigationadmin extends StatefulWidget {
  const Bottomnavigationadmin({super.key});

  @override
  State<Bottomnavigationadmin> createState() => _BottomnavigationadminState();
}

final List<Widget> screens = [
  Dashboardadmin(),
  Useradminpage(),
  Teacheradminpage(),
  Contentadminpage(),
  Reportadminpage(),
];
int selectedIndexadmin = 0;

class _BottomnavigationadminState extends State<Bottomnavigationadmin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedIndexadmin],
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
                label: "Users",
                icon: Icons.person_2_outlined,
              ),
              botommteacherwid(
                index: 2,
                label: "Teachers",
                icon: Icons.school_outlined,
              ),
              botommteacherwid(
                index: 3,
                label: "Content",
                imagepath: "assets/images/content.png",
              ),
              botommteacherwid(
                index: 4,
                label: "Reports",
                icon: Icons.book_outlined,
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
    bool isSelected = selectedIndexadmin == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndexadmin = index;
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
