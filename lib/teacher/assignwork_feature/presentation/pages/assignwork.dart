import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/addasign.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/assignworkcard.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/topassingconti.dart';

class Assignwork extends StatelessWidget {
  const Assignwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Topassingconti(),
              SizedBox(height: 10),
              Assignworkcard(),
              SizedBox(height: 10),
              Addasign(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
