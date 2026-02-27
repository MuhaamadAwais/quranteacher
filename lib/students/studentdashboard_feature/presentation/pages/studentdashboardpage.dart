import 'package:flutter/material.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/currentsurah.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/maincontstd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/namestd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/progessstd.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/quickaccesconti.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/textacces.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/topcontistd.dart';

void main() {
  runApp(MaterialApp(home: Scaffold(body: Studentdashboardpage())));
}

class Studentdashboardpage extends StatefulWidget {
  const Studentdashboardpage({super.key});

  @override
  State<Studentdashboardpage> createState() => _StudentdashboardpageState();
}

class _StudentdashboardpageState extends State<Studentdashboardpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Topcontistd(),
                  Positioned(top: 40, left: 10, right: 10, child: Namestd()),
                  Positioned(
                    top: 120,
                    left: 10,
                    right: 10,
                    child: Maincontstd(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Progessstd(),
              SizedBox(height: 10),
              Currentsurah(),
              Textacces(),
              SizedBox(height: 10),
              Quickaccesconti(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
