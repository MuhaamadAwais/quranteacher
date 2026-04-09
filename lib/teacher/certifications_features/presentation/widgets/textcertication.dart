import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/add_certifcate_featre/presentation/pages/add_certificate.dart';

class Textcertication extends StatelessWidget {
  const Textcertication({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.3)),
            ),
            child: Icon(Icons.arrow_back, color: AppColors.textWhite),
          ),
        ),
        SizedBox(width: 5,),
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Certifications",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Text(
                "Professional cerdentials",
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),

        Expanded(
          flex: 2,
          child: GestureDetector(
            onTap: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => AddCertificate()));
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.textWhite.withOpacity(0.15),
              ),
              child: Icon(Icons.add, color: AppColors.textWhite),
            ),
          ),
        ),
      ],
    );
  }
}
