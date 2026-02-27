import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/startliveclas_feature/presentation/widget/btnstartclass.dart';
import 'package:quranteacher/teacher/startliveclas_feature/presentation/widget/mainboard.dart';
import 'package:quranteacher/teacher/startliveclas_feature/presentation/widget/options.dart';
import 'package:quranteacher/teacher/startliveclas_feature/presentation/widget/topconticlass.dart';

class Startliveclass extends StatelessWidget {
  const Startliveclass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Topconticlass(),
              SizedBox(height: 20),
              Mainboard(),
              SizedBox(height: 20),
              Options(),
              SizedBox(height: 20),
              Btnstartclass(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
