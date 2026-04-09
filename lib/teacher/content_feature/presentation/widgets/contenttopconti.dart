import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

Widget contnenttopConti(
  double widthconti,
  double heightconti,
  Color startcolor,
  Color endcolor,
  String contenttitle,
  String describ,
  IconData iconsdata,

  VoidCallback onTabFunction,
) {
  return Container(
    width: widthconti,
    height: heightconti,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [startcolor, endcolor],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white.withOpacity(0.3)),
                ),
                child: GestureDetector(
                  onTap: onTabFunction,
                  child: Icon(
                    Icons.arrow_back_ios_new_rounded,
                    color: AppColors.textWhite,
                    size: 20,
                  ),
                ),
              ),

              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contenttitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    describ,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.25),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Icon(iconsdata, color: Colors.white, size: 24),
            ),
          ),
        ],
      ),
    ),
  );
}
