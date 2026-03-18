import 'package:flutter/material.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/topmaincontentwid.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

void main() {
  runApp(MaterialApp(home: Contentadminpage()));
}

class Contentadminpage extends StatefulWidget {
  const Contentadminpage({super.key});

  @override
  State<Contentadminpage> createState() => _ContentadminpageState();
}

class _ContentadminpageState extends State<Contentadminpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Topmaincontentwid(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.islamicEmerald,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: false,
                  indicator: BoxDecoration(
                    color: Colors.white, // Selected tab background
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black, // Selected text color
                  unselectedLabelColor: Colors.white, // Unselected text color
                  dividerColor: Colors.transparent, // remove bottom line
                  tabs: const [
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home),
                          SizedBox(width: 4),
                          Text("Quran"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.book_outlined),
                          SizedBox(width: 4),
                          Text("Hadith"),
                        ],
                      ),
                    ),
                    Tab(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.school_outlined),
                          SizedBox(width: 4),
                          Text("Lessons"),
                        ],
                      ),
                    ),
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
                        SizedBox(height: 10),
                        addconti(
                          width,
                          height * 0.07,
                          "Add Quran Content",
                          AppColors.backgroundStart,
                          AppColors.backgroundStart,
                        ),

                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          3,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          4,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),
                        
                        SizedBox(height: 30),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        addconti(
                          width,
                          height * 0.07,
                          "Add Hadith Content",
                          Colors.blueAccent,
                          Colors.deepPurple,
                        ),

                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          3,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          4,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),
                        
                        SizedBox(height: 30),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        addconti(
                          width,
                          height * 0.07,
                          "Add Lesson",
                          Colors.purple,
                          Colors.pink,
                        ),

                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          3,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
                        ),

                        contidesigncontents(
                          4,
                          width,
                          height * 0.17,
                          "Surah AL-Fatihah",
                          "Complete",
                          "412 views",
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
    );
  }

  Widget addconti(
    double width,
    double height,
    String textforadd,
    Color startcolor,
    Color endcolor,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startcolor, endcolor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add, color: AppColors.textWhite),
            SizedBox(width: 10),
            Text(
              textforadd,
              style: TextStyle(
                color: AppColors.textWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget contidesigncontents(
    int index,
    double widthmain,
    double heightmain,
    String subjectname,
    String subjectpurpose,
    String studentsview,
  ) {
    bool isactive = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: widthmain,
        height: heightmain,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Card(
            elevation: selectedIndex == index ? 10 : 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.textWhite,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          subjectname,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 65,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.backgroundStart.withOpacity(0.15),
                          ),
                          child: Center(
                            child: Text(
                              "Published",
                              style: TextStyle(
                                color: AppColors.backgroundStart,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),

                    Text(
                      subjectpurpose,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "$studentsview ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Spacer(),
                        Container(
                          width: 65,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.islamicNavy700.withOpacity(0.15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.edit,
                              color: AppColors.islamicNavy400,
                            ),
                          ),
                        ),

                        SizedBox(width: 5),

                        Container(
                          width: 65,
                          height: 25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColors.switchBackground.withOpacity(0.15),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.delete,
                              color: AppColors.destructive,
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
      ),
    );
  }
}
