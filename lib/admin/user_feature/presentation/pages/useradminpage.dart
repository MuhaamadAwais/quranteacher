import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/commonbottomsheet.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/searchuserswid.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/toprolewid.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class Useradminpage extends StatefulWidget {
  const Useradminpage({super.key});

  @override
  State<Useradminpage> createState() => _UseradminpageState();
}

class _UseradminpageState extends State<Useradminpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              // Toprolewid(),
              TopcommonContainer(
                title: "User Management",
                subTitle: "Manage Teachers and Students",
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
              SizedBox(height: 20),
              Searchuserswid(),
              SizedBox(height: 20),
              // TAB BAR
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width * 0.9,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: AppColors.islamicEmerald,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.islamicEmerald,
                        width: 4,
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.white,
                    dividerColor: Colors.transparent,
                    tabs: const [
                      Tab(text: "Students", icon: Icon(Icons.group_outlined)),
                      Tab(text: "Teachers", icon: Icon(Icons.school_outlined)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: height * 0.02),
              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),

                    SingleChildScrollView(
                      child: Column(
                        children: [
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: height * 0.015),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.37,
                            height * 0.06,
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
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

  Widget contstdtea(
    double width,
    double height,
    double widthmin,
    double heightmin,
  ) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18),
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          color: AppColors.textWhite,
          elevation: 5,
          shadowColor: AppColors.islamicEmerald,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.backgroundStart,
                        ),
                        child: Icon(Icons.school_outlined),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Ahmed Hussan",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),

                          Text(
                            "ahmed@example.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 18),
                      Container(
                        width: 55,
                        height: 20,
                        decoration: BoxDecoration(
                          color: AppColors.backgroundStart,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "active",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  // joined date
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "joined 1/15/2026",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      //Spacer(),
                      Text(
                        "42 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.01),
                  // container
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              behavior: SnackBarBehavior.floating,
                              margin: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                              ),
                              backgroundColor: Color.fromARGB(251, 54, 185, 45),
                              content: Text(
                                "Accepted Successfully",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          );
                        },
                        child: Container(
                          width: widthmin,
                          height: heightmin,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(251, 54, 185, 45),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SizedBox(width: width * 0.03),
                                Icon(
                                  Icons.check_circle,
                                  size: 25,
                                  color: AppColors.textWhite,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  textAlign: TextAlign.center,
                                  "Accepted",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //  Spacer(),
                      SizedBox(width: width * 0.05),
                      GestureDetector(
                        onTap: () {
                          bottomsheet(context);
                        },
                        child: Container(
                          width: widthmin,
                          height: heightmin,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.red.withOpacity(0.35),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  size: 25,
                                  Icons.block,
                                  color: AppColors.destructive,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Suspened",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.destructive,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
