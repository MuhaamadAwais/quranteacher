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
<<<<<<< HEAD
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
=======
      appBar: AppBar(
        shape: RoundedSuperellipseBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login(role: "student")),
            );
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Student Detail Form",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.startgreen,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 👇 TOP INFO CARD (security note)
                ScaleTransition(
                  scale: scale,
                  child: FadeTransition(
                    opacity: fade,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: AppColors.startgreen.withOpacity(0.3),
                          width: 1.2,
                        ),
                      ),
                      color: AppColors.whiteBackground,
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              size: 20,
                              color: AppColors.primary,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Your data is secure and will not be shared with any third party or other person.All information is stored only for app functionality.\nNotes\nplease enter correct information otherwise remove from app after varification.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black54,
                                  height: 1.4,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
>>>>>>> b635513191a4e7bb8db95608e100c23a23a4e805

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
