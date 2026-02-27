import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/classcontiwid.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/leastitems.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/nametextwid.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/showdatacontiwid.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/todayyclasswid.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/topmaincontiwid.dart';

class Teacherdashboardpage extends StatefulWidget {
  const Teacherdashboardpage({super.key});

  @override
  State<Teacherdashboardpage> createState() => _TeacherdashboardpageState();
}

class _TeacherdashboardpageState extends State<Teacherdashboardpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Topmaincontiwid(),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Nametextwid(),
                  ),
                  Positioned(
                    top: 120,
                    left: 20,
                    right: 20,
                    child: Classcontiwid(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Showdatacontiwid(),
              Todayyclasswid(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      "Quick Actions",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Leastitems(),
            ],
          ),
        ),
      ),
    );
  }
}
