import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';
import 'package:quranteacher/students/bottomnavi.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/availabilityydesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/designscontitextfiled.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/iconcontidesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/madhabconti.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/ratesconti.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/submitapplicationconti..dart';

class StudentDetailForm extends StatefulWidget {
  const StudentDetailForm({super.key});

  @override
  State<StudentDetailForm> createState() => _StudentDetailFormState();
}

class _StudentDetailFormState extends State<StudentDetailForm>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 30),
              Iconcontidesign(),
              Text(
                "Become a Student",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                "Start learning Quran easily",
                style: TextStyle(fontSize: 14),
              ),

              /// Name
              DesignsContiTextField(
                height: height * 0.2,
                title: "Full Name",
                hint: "Enter your name",
                icon: Icons.person,
              ),

              /// Age
              DesignsContiTextField(
                height: height * 0.2,
                title: "Age",
                hint: "18",
                icon: Icons.cake,
              ),

              /// Learning Type
              DesignsContiTextField(
                height: height * 0.2,
                title: "What you want to learn",
                hint: "Quran / Tajweed / Arabic",
                icon: Icons.menu_book,
              ),

              /// Level
              DesignsContiTextField(
                height: height * 0.2,
                title: "Current Level",
                hint: "Beginner",
                icon: Icons.bar_chart,
              ),

              /// Teacher Preference
              DesignsContiTextField(
                height: height * 0.2,
                title: "Preferred Teacher",
                hint: "Male / Female",
                icon: Icons.person_outline,
              ),

              /// Contact
              DesignsContiTextField(
                height: height * 0.2,
                title: "Contact Number",
                hint: "03XXXXXXXXX",
                icon: Icons.phone,
              ),

              Availabilityydesign(),
              Submitapplicationconti(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
