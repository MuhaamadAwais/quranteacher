import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';

class Stacknamewid extends StatelessWidget {
  const Stacknamewid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 3, top: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              indexscreen = 0;
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Bottomnavigationadmin(),
                ),
              );
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.textWhite.withOpacity(0.15),
              ),
              child: Icon(Icons.arrow_back, color: AppColors.textWhite),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "Teacher Approvals",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
