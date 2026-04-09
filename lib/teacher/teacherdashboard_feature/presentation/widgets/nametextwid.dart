import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/teachernotificationsscreen.dart';

class Nametextwid extends StatelessWidget {
  const Nametextwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Assalamu Alaikum",
          style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 16,
            color: AppColors.textWhite,
          ),
        ),

        SizedBox(height: 5),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sheikh Muhammad",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.textWhite,
                  ),
                ),
                SizedBox(height: 4),
                Text(
                  "Tajweed & Quran Expert",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                    color: AppColors.textWhite,
                  ),
                ),
              ],
            ),
            Spacer(),
            Badge(
              label: Text("3"),
              backgroundColor: AppColors.destructive,
              textColor: AppColors.textWhite,
              child: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.textWhite.withOpacity(0.15),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const TeacherNotificationsScreen(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.textWhite,
                      size: 24,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
