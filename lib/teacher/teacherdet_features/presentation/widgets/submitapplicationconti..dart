import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

class Submitapplicationconti extends StatelessWidget {
  const Submitapplicationconti({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => Bottomnaviteacher()),
            (route) => false,
          );
        },
        child: Container(
          height: height * 0.08,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              colors: [const Color(0xFF006633), const Color(0xCC054632)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Text(
              "Submit Application",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
