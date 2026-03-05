import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart' show AppColors;

class Nameadminwid extends StatelessWidget {
  const Nameadminwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 5),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "WelCome Back",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: AppColors.textWhite,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "Admin Dashboard",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
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
