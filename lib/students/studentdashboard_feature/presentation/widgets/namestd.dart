import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/topcontistd.dart';

class Namestd extends StatelessWidget {
  const Namestd({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Assalamu Alaikum",
              style: TextStyle(color: AppColors.textWhite, fontSize: 12),
            ),

            Text(
              "Ahmaed Hassan",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 20,
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
                  border: Border.all(
                    color: Colors.white.withOpacity(0.3),
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.notifications_outlined,
                    color: AppColors.textWhite,
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
