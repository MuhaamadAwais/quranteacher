import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/pages/dashboardadmin.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/designscontitextfiled.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/iconcontidesign.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/widgets/submitapplicationconti..dart';

class Admindetailpage extends StatefulWidget {
  const Admindetailpage({super.key});

  @override
  State<Admindetailpage> createState() => _AdmindetailpageState();
}

class _AdmindetailpageState extends State<Admindetailpage> {
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
              Iconcontidesign(icons: Icons.admin_panel_settings_outlined),
              Text(
                "Become a Admin",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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
                title: "Email",
                hint: "exampe@gmail.com",
                icon: Icons.email_outlined,
              ),

              /// Learning Type
              DesignsContiTextField(
                height: height * 0.2,
                title: "password",
                hint: "unique password",
                icon: Icons.menu_book,
              ),

              Submitapplicationconti(
                ontabs: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (context) => Bottomnavigationadmin()),
                    (route) => false,
                  );
                },
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
