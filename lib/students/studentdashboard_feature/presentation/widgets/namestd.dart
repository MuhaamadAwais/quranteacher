import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/qurannotificationscreen.dart';

class Namestd extends StatelessWidget {
  const Namestd({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SizedBox(width: width * 0.03),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 5),
            Text(
              "Assalamu Alaikum",
              style: TextStyle(color: AppColors.textWhite, fontSize: 14),
            ),

            Text(
              "Ahmaed Hassan",
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        SizedBox(width: width * 0.4),

        Column(
          children: [
            Container(
              height: height * 0.13,
              width: width * 0.13,
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
                  child: Badge(
                    isLabelVisible: true,
                    offset: Offset(12, -14),
                    label: Text("3"),
                    child: Icon(
                      Icons.notifications_outlined,
                      size: 24,
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
