import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/classeshourlyconti.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/earningmainconti.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/montlyyearning.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/recenttranstion.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/textearning.dart';
import 'package:quranteacher/teacher/earning_feature/presentation/widgets/topearingconti.dart';

class Earningpages extends StatefulWidget {
  const Earningpages({super.key});

  @override
  State<Earningpages> createState() => _EarningpagesState();
}

class _EarningpagesState extends State<Earningpages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Topearingconti(),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 30,
                    child: Textearning(),
                  ),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 80,
                    child: Earningmainconti(),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Montlyyearning(),
              SizedBox(height: 10),
              Recenttranstion(),
              SizedBox(height: 10),
              Classeshourlyconti(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
