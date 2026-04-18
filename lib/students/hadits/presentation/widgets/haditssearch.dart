import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';

class Haditssearch extends StatelessWidget {
  const Haditssearch({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.07,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.textWhite,
        ),
        child: Center(
          child: TextField(
            // textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            style: TextStyle(color: AppColors.primary),

            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey.shade200,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: Colors.grey, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  color: Newcolors.green700,
                  width: 2,
                ),
              ),

              border: InputBorder.none,
              hint: Text(
                "Search Hadith...",
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 181, 186, 191),
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors.textGreen,
                size: 24,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
