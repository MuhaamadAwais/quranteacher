import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/addasign.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/assignworkcard.dart';
import 'package:quranteacher/teacher/assignwork_feature/presentation/widget/topassingconti.dart';

void main() {
  runApp(MaterialApp(home: Assignwork()));
}

class Assignwork extends StatelessWidget {
  const Assignwork({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Topassingconti(),
              SizedBox(height: 10),
              Assignworkcard(),
              SizedBox(height: 10),
              Addasign(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
