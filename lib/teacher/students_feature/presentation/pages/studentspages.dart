import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/multicontistd.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/searchstd.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/studentdesign.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/textstudent.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/topstd.dart';

class Studentspages extends StatefulWidget {
  const Studentspages({super.key});

  @override
  State<Studentspages> createState() => _StudentspagesState();
}

class _StudentspagesState extends State<Studentspages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Topstd(),
                  Positioned(
                    left: 20,
                    top: 20,
                    right: 20,
                    child: Textstudent(),
                  ),
                  Positioned(left: 20, top: 70, right: 20, child: Searchstd()),
                  Positioned(
                    left: 20,
                    top: 160,
                    right: 20,
                    child: Multicontistd(),
                  ),
                ],
              ),
              Studentdesign(),
              Studentdesign(),
              Studentdesign(),
            ],
          ),
        ),
      ),
    );
  }
}
