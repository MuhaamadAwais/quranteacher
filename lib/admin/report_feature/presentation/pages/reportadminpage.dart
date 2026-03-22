import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/fullexportreport.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/growthchart.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/maincontInerreport.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/platformprofence.dart';
import 'package:quranteacher/admin/report_feature/presentation/widgets/revenuebreakout.dart';
import 'package:quranteacher/students/topcommon_container.dart';

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
                  // Backstackreport(),
                  TopcommonContainer(
                    title: "Reports & Analytics",
                    subTitle: "complete all analytics reports",
                    onBackTap: () {
                      indexscreen = 0;
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Bottomnavigationadmin(),
                        ),
                      );
                    },
                  ),

                  // Positioned(
                  //   top: 20,
                  //   left: 20,
                  //   right: 20,
                  //   child: Stacktextreport(),
                  // ),
                ],
              ),
              SizedBox(height: 10),
              Fullexportreport(),
              SizedBox(height: 10),
              Maincontinerreport(),
              SizedBox(height: 10),
              Growthchart(),
              SizedBox(height: 10),
              Revenuebreakout(),
              SizedBox(height: 10),
              Platformprofence(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
