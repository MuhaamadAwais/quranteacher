import 'package:flutter/material.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/approvalcontiwid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/approvalstatisticswid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/mainapprovalwid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/stackbackcontiwid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/stacknamewid.dart';

void main() {
  runApp(MaterialApp(home: Teacheradminpage()));
}

class Teacheradminpage extends StatefulWidget {
  const Teacheradminpage({super.key});

  @override
  State<Teacheradminpage> createState() => _TeacheradminpageState();
}

class _TeacheradminpageState extends State<Teacheradminpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Stackbackcontiwid(),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Stacknamewid(),
                  ),
                  Positioned(
                    top: 100,
                    left: 20,
                    right: 20,
                    child: Approvalcontiwid(),
                  ),
                ],
              ),
              Mainapprovalwid(),
              Mainapprovalwid(),
              Mainapprovalwid(),
              Approvalstatisticswid(),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
