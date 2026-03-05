import 'package:flutter/material.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/backstackreport.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/fullexportreport.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/growthchart.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/maincontInerreport.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/platformprofence.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/revenuebreakout.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/stacktextreport.dart';

class Reportadminpage extends StatefulWidget {
  const Reportadminpage({super.key});

  @override
  State<Reportadminpage> createState() => _ReportadminpageState();
}

class _ReportadminpageState extends State<Reportadminpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Backstackreport(),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Stacktextreport(),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    right: 20,
                    child: Fullexportreport(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Maincontinerreport(),
              SizedBox(height: 10),
              Growthchart(),
              SizedBox(height: 10),
              Revenuebreakout(),
              SizedBox(height: 10),
              Platformprofence(),
            ],
          ),
        ),
      ),
    );
  }
}
