import 'package:flutter/material.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/toprolewid.dart';
import 'package:quranteacher/appcolors.dart';

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
              Toprolewid(),
              SizedBox(height: 20),
              // TAB BAR
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: width * 0.9,
                  height: height * 0.07,
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

                      SizedBox(width: 10),
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

                  // joined date
                  Row(
                    children: [
                      Text(
                        "joined 1/15/2026",
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                      Spacer(),
                      Text(
                        "42 Classes",
                        style: TextStyle(color: Colors.black, fontSize: 16),
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
                          color: AppColors.islamicNavy400.withOpacity(0.35),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.security_outlined,
                                size: 35,
                                color: AppColors.islamicNavy600,
                              ),
                              SizedBox(width: 10),
                              Text(
                                textAlign: TextAlign.center,
                                "View",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.islamicNavy600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
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
                                size: 35,
                                Icons.block,
                                color: AppColors.destructive,
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Suspened",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: AppColors.destructive,
                                ),
                              ),
                            ],
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
