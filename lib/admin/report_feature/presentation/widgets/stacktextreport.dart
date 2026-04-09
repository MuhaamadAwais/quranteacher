import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';

class Stacktextreport extends StatelessWidget {
  const Stacktextreport({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colors.white),
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
              child: Center(child: Icon(Icons.arrow_back_ios,size: 24, color: AppColors.textWhite)),
            ),
          ),
          SizedBox(width: 5),
          Text(
            "Reports & Analytics",
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
