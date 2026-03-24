import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/availabilityydesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/designscontitextfiled.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/iconcontidesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/madhabconti.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/ratesconti.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/submitapplicationconti..dart';

class Teacherdetailspage extends StatefulWidget {
  const Teacherdetailspage({super.key});

  @override
  State<Teacherdetailspage> createState() => _TeacherdetailspageState();
}

class _TeacherdetailspageState extends State<Teacherdetailspage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 30),
              Iconcontidesign(),
              Text(
                "Become a Teacher",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),

              Text(
                "Share knowledge and inspire students",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 19,
                ),
              ),

              DesignsContiTextField(
                height: height * 0.2,
                title: "Specialization",
                hint: "e.g., Quran, Arabic, Islamic",
                icon: Icons.content_copy,
              ),

              DesignsContiTextField(
                height: height * 0.2,
                title: "Qualification",
                hint: "e.g., MA in Islamic Studies",
                icon: Icons.school_outlined,
              ),

              DesignsContiTextField(
                height: height * 0.2,
                title: "Experience(Years)",
                hint: "5",
                icon: Icons.work_outline,
              ),

              DesignsContiTextField(
                height: height * 0.2,
                title: "Available From",
                hint: "mm/dd/yyyy",
                icon: Icons.calendar_today,
              ),

              Madhabconti(
                height: height * 0.2,
                title: "Madhab",
                hint: "select your madhab",
                icon: Icons.auto_awesome_outlined,
              ),

              Availabilityydesign(),
              Ratesconti(),
              Submitapplicationconti(),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
