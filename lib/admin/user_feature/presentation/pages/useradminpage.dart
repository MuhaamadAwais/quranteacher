import 'package:flutter/material.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/toprolewid.dart';
import 'package:quranteacher/appcolors.dart';

void main() {
  runApp(MaterialApp(home: Useradminpage()));
}

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
              SizedBox(height: 10),
              Toprolewid(),

              // TAB BAR
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width * 0.9,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.islamicEmerald,
                  ),
                  child: TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                      color: Colors.white,
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

              Expanded(
                child: TabBarView(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
                            height * 0.06,
                          ),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
                            height * 0.06,
                          ),
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
                            height * 0.06,
                          ),
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
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
                            width * 0.4,
                            height * 0.06,
                          ),

                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
                            height * 0.06,
                          ),
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
                            height * 0.06,
                          ),
                          contstdtea(
                            width,
                            height * 0.25,
                            width * 0.4,
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
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height,
        child: Card(
          color: AppColors.textWhite,
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.
                    children: [
                      Container(
                        width: 80,
                        height: 80,
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
                              fontSize: 20,
                            ),
                          ),

                          Text(
                            "ahmed@example.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(width: 30),
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                          color: AppColors.backgroundStart,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            "active",
                            style: TextStyle(color: AppColors.primary),
                          ),
                        ),
                      ),
                    ],
                  ),

                  // joined date
                  Row(
                    children: [
                      Text(
                        "joined 1/15/2026",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Spacer(),
                      Text(
                        "42 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ],
                  ),

                  // container
                  Row(
                    children: [
                      Container(
                        width: widthmin,
                        height: heightmin,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.islamicNavy400,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.admin_panel_settings_outlined,
                              size: 35,
                              color: AppColors.islamicNavy600,
                            ),

                            Text(
                              "View",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.islamicNavy600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Container(
                        width: widthmin,
                        height: heightmin,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              size: 35,
                              Icons.admin_panel_settings_outlined,
                              color: AppColors.destructive,
                            ),
                            Text(
                              "Suspened",
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.destructive,
                              ),
                            ),
                          ],
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
