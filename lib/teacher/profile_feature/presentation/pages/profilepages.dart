import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/profile_feature/presentation/widgets/logout.dart';
import 'package:quranteacher/teacher/profile_feature/presentation/widgets/otherconti.dart';
import 'package:quranteacher/teacher/profile_feature/presentation/widgets/topcontiitems.dart';
import 'package:quranteacher/teacher/profile_feature/presentation/widgets/topprofileconti.dart';



class Profilepages extends StatefulWidget {
  const Profilepages({super.key});

  @override
  State<Profilepages> createState() => _ProfilepagesState();
}

class _ProfilepagesState extends State<Profilepages> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [Topprofileconti(), Topcontiitems()]),
              SizedBox(height: 20),
              Otherconti(),
              SizedBox(height: 20),
              Logout(),
              SizedBox(height: 20),

            ],
          ),
        ),
      ),
    );
  }
}
