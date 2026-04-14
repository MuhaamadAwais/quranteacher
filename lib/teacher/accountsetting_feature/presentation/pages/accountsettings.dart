import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/backsetting.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/personalinfosetting.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/preferencessetting.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/savebtnsetting.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/securitysetting.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/textsettting.dart';

class Accountsettings extends StatefulWidget {
  const Accountsettings({super.key});

  @override
  State<Accountsettings> createState() => _AccountsettingsState();
}

class _AccountsettingsState extends State<Accountsettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Backsetting(),
                  Positioned(
                    left: 20,
                    top: 35,
                    right: 20,
                    child: Textsettting(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Personalinfosetting(),
              SizedBox(height: 10),
              Securitysetting(),
              SizedBox(height: 10),
              Preferencessetting(),
              SizedBox(height: 10),
              Savebtnsetting(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
