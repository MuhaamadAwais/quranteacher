import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';

class Searchquran extends StatelessWidget {
  const Searchquran({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, left: 20, right: 20),
      child: Container(
        height: height * 0.07,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.textWhite,
        ),
        child: Center(
          child: TextField(
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(
              //border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Newcolors.green500),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Newcolors.green300),
              ),
              hint: Text(
                "Search Surah...",
                style: TextStyle(
                  fontSize: 15,
                  color: AppColors.switchBackground,
                ),
              ),
              prefixIcon: Icon(Icons.search, color: AppColors.switchBackground),
            ),
          ),
        ),
      ),
    );
  }
}
