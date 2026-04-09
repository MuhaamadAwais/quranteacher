import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Textacces extends StatelessWidget {
  const Textacces({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(04.0),
      child: Row(
        children: [
          Text(
            "Quick Access",
            style: TextStyle(
              color: AppColors.textGreen,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ],
      ),
    );
  }
}
