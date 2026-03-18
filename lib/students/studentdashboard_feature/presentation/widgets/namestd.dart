import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/qurannotificationscreen.dart';

class Namestd extends StatelessWidget {
  const Namestd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Text(
              "Assalamu Alaikum",
              style: TextStyle(color: AppColors.textWhite, fontSize: 16),
            ),

            Text(
              "Ahmaed Hassan",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),

        Spacer(),
        Column(
          children: [
            Badge(
              label: Text("3"),
              isLabelVisible: true,
              textColor: AppColors.textWhite,
              backgroundColor: AppColors.destructive,
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white.withOpacity(0.15),
                  border: Border.all(color: Colors.black26, width: 1.5),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const QuranNotificationScreen(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.notifications_outlined,
                      color: AppColors.textWhite,
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
