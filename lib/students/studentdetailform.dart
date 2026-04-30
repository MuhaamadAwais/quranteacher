import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranteacher/auth_login_feature/bloc/authenticator_bloc.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/bottomnavi.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/availabilityydesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/designscontitextfiled.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/iconcontidesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/submitapplicationconti..dart';

class StudentDetailForm extends StatefulWidget {
  const StudentDetailForm({super.key});

  @override
  State<StudentDetailForm> createState() => _StudentDetailFormState();
}

class _StudentDetailFormState extends State<StudentDetailForm>
    with TickerProviderStateMixin {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController learningTypeController = TextEditingController();
  final TextEditingController studylevel = TextEditingController();
  final TextEditingController teacherselctcontroller = TextEditingController();
  final TextEditingController contentcontroller = TextEditingController();
  String studentAvaliableTime = "";

  // function of student submit form and error message
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Newcolors.green400,
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  // register function
  void _studentDetail() {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      _showSnackBar("User not logged in");
      return;
    }

    final name = nameController.text.trim();
    final age = ageController.text.trim();
    final learningtype = learningTypeController.text.trim();
    final studyleve = studylevel.text.trim();
    final teacherselect = teacherselctcontroller.text.trim();
    final contectNumber = contentcontroller.text.trim();
    final String studentAvaliableTime = this.studentAvaliableTime;

    try {
      if (name.isEmpty ||
          age.isEmpty ||
          learningtype.isEmpty ||
          studyleve.isEmpty ||
          contectNumber.isEmpty ||
          studentAvaliableTime.isEmpty ||
          teacherselect.isEmpty) {
        _showSnackBar('Please fill all fields');
        return;
      }

      if (contectNumber.length != 11) {
        _showSnackBar('Enter Complete Contact Number');
        return;
      }

      context.read<AuthenticatorBloc>().add(
        StudentDetailEvent(
          uid: user.uid,
          email: user.email ?? "",
          fullName: name,
          age: age,
          learningChoice: learningtype,
          studylevel: studyleve,
          contectNumber: contectNumber,
          availabilityClass: studentAvaliableTime,
        ),
      );
    } catch (e) {
      _showSnackBar(e.toString());
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    learningTypeController.dispose();
    studylevel.dispose();
    teacherselctcontroller.dispose();
    contentcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return BlocListener<AuthenticatorBloc, AuthenticatorState>(
      listener: (context, state) {
        if (state is AuthenticatorLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => AlertDialog(
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 20),
                  Text(state.message ?? 'Submiting  detail from...'),
                ],
              ),
            ),
          );
        } else if (state is AuthenticatorSuccess) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('successfully save student detail!')),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Bottomnavi()),
          );
        } else if (state is AuthenticatorError) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 30),
                Iconcontidesign(icons: Icons.school_outlined),
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
                  controller: nameController,
                  height: height * 0.2,
                  title: "Full Name",
                  hint: "Enter your name",
                  icon: Icons.person,
                ),

                /// Age
                DesignsContiTextField(
                  controller: ageController,
                  height: height * 0.2,
                  title: "Age",
                  hint: "18",
                  icon: Icons.cake,
                ),

                /// Learning Type
                DesignsContiTextField(
                  controller: learningTypeController,
                  height: height * 0.2,
                  title: "What you want to learn",
                  hint: "Quran / Tajweed / Arabic",
                  icon: Icons.menu_book,
                ),

                /// Level
                DesignsContiTextField(
                  controller: studylevel,
                  height: height * 0.2,
                  title: "Current Level",
                  hint: "Beginner",
                  icon: Icons.bar_chart,
                ),

                /// Teacher Preference
                DesignsContiTextField(
                  controller: teacherselctcontroller,
                  height: height * 0.2,
                  title: "Preferred Teacher",
                  hint: "Male / Female",
                  icon: Icons.person_outline,
                ),

                /// Contact
                DesignsContiTextField(
                  controller: contentcontroller,
                  height: height * 0.2,
                  title: "Contact Number",
                  hint: "03XXXXXXXXX",
                  icon: Icons.phone,
                ),
                Availabilityydesign(
                  onTimeSlotSelected: (value) {
                    studentAvaliableTime = value;
                    //FocusScope.of(context).unfocus();
                  },
                ),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Submitapplicationconti(ontabs: _studentDetail),
                ),
                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
