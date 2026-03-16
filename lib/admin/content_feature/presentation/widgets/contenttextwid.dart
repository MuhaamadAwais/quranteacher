import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';

class Contenttextwid extends StatelessWidget {
  const Contenttextwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 25),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              selectedIndexadmin = 0;

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
            "Content Management",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
