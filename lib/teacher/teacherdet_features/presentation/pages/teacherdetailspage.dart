import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranteacher/auth_login_feature/bloc/authenticator_bloc.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';
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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController specializationController =
      TextEditingController();
  final TextEditingController qualificationController = TextEditingController();
  final TextEditingController experienceController = TextEditingController();
  // final TextEditingController availableController = TextEditingController();
  final TextEditingController madhabController = TextEditingController();
  String teacherAvailabeTime = "";

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
  void _teacherdetail() {
    final user = FirebaseAuth.instance.currentUser;

    if (user == null) {
      _showSnackBar("User not logged in");
      return;
    }

    final name = nameController.text.trim();
    final specialization = specializationController.text.trim();
    final qualification = qualificationController.text.trim();
    final experience = experienceController.text.trim();
    final madhad = madhabController.text.trim();
    final teacherAvailabeTime = this.teacherAvailabeTime;
    try {
      if (name.isEmpty ||
          specialization.isEmpty ||
          qualification.isEmpty ||
          experience.isEmpty ||
          madhad.isEmpty ||
          teacherAvailabeTime.isEmpty) {
        _showSnackBar('Please fill all fields');
        return;
      }

      context.read<AuthenticatorBloc>().add(
        TeacherDetailEvent(
          uid: user.uid,
          email: user.email ?? "",
          qualificationi: qualification,
          availabletime: teacherAvailabeTime,
          experiance: experience,
          madhab: madhad,
          name: name,
        ),
      );
    } catch (e) {
      _showSnackBar(e.toString());
    }
  }

  @override
  void dispose() {
    nameController.dispose();
    specializationController.dispose();
    qualificationController.dispose();
    experienceController.dispose();
    madhabController.dispose();
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
            builder: (context) {
              return AlertDialog(
                content: Row(
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(width: 20),
                    Text(state.message ?? 'Loading...'),
                  ],
                ),
              );
            },
          );
        } else if (state is AuthenticatorSuccess) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
          _showSnackBar("Teacher Details Added Successfully");
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Bottomnaviteacher()),
            (route) => false,
          );
        } else if (state is AuthenticatorError) {
          _showSnackBar(state.message);
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 30),
                Iconcontidesign(icons: Icons.supervisor_account_outlined),
                Text(
                  "Become a Teacher",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),

                Text(
                  "Share knowledge and inspire students",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),

                DesignsContiTextField(
                  controller: nameController,
                  height: height * 0.2,
                  title: "Full Name",
                  hint: "e.g., abc",
                  icon: Icons.person,
                ),

                DesignsContiTextField(
                  controller: specializationController,
                  height: height * 0.2,
                  title: "Specialization",
                  hint: "e.g., Quran, Arabic, Islamic",
                  icon: Icons.verified,
                ),

                DesignsContiTextField(
                  controller: qualificationController,
                  height: height * 0.2,
                  title: "Qualification",
                  hint: "e.g., MA in Islamic Studies",
                  icon: Icons.school_outlined,
                ),

                DesignsContiTextField(
                  controller: experienceController,
                  height: height * 0.2,
                  title: "Experience(Years)",
                  hint: "5",
                  icon: Icons.work_outline,
                ),

                DesignsContiTextField(
                  controller: madhabController,
                  height: height * 0.2,
                  title: "Madhab",
                  hint: "select your madhab",
                  icon: Icons.auto_awesome_outlined,
                ),
                Availabilityydesign(
                  onTimeSlotSelected: (value) {
                    teacherAvailabeTime = value;
                  },
                ),
                //  Ratesconti(),
                GestureDetector(
                  onTap: () {
                    FocusScope.of(context).unfocus();
                  },
                  child: Submitapplicationconti(ontabs: _teacherdetail),
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
