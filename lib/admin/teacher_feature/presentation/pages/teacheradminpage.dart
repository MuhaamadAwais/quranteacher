import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/approvalcontiwid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/approvalstatisticswid.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/studentapproval.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/teacherapproval.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';



class Teacheradminpage extends StatefulWidget {
  const Teacheradminpage({super.key});

  @override
  State<Teacheradminpage> createState() => _TeacheradminpageState();
}

class _TeacheradminpageState extends State<Teacheradminpage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // 🔹 Top Section
              Stack(
                children: [
                  TopcommonContainer(
                    title: "Teachers & Students Approval",
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
                  Positioned(
                    top: 80,
                    left: 20,
                    right: 20,
                    child: Approvalcontiwid(),
                  ),
                ],
              ),

              SizedBox(height: height * 0.02),

              // 🔹 TabBar
              Container(
                height: height * 0.07,
                width: width * 0.8,
                decoration: BoxDecoration(
                  color: AppColors.startgreen,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 0),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,

                    isScrollable: false,
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.textWhite,
                      border: Border.all(
                        color: AppColors.startgreen,
                        width: 4,
                      ),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    tabs: [
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.school_outlined),
                            SizedBox(width: 4),
                            Text(
                              "Teacher",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Tab(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.person_3_outlined),
                            SizedBox(width: 4),
                            Text(
                              "Student",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // 🔥 FIXED PART
              Expanded(
                child: TabBarView(
                  children: [
                    // ✅ Scroll yahan do
                    ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        Teacherapproval(),
                        Teacherapproval(),
                        SizedBox(height: 20),
                        Approvalstatisticswid(),
                      ],
                    ),

                    ListView(
                      padding: EdgeInsets.all(10),
                      children: [
                        Studentapproval(),
                        Studentapproval(),
                        SizedBox(height: 20),
                        Approvalstatisticswid(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
