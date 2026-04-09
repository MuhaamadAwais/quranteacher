import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';

class Textforuserwid extends StatelessWidget {
  const Textforuserwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 3, top: 10),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.textWhite.withOpacity(0.15),
            ),
            child: GestureDetector(
              onTap: () {
                indexscreen = 0;
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Bottomnavigationadmin(),
                  ),
                );
              },
              child: Icon(Icons.arrow_back_ios_new, color: AppColors.textWhite,size: 24,),
            ),
          ),
          SizedBox(width: 8),
          Text(
            "User Managment",
            style: TextStyle(
              color: AppColors.textWhite,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
