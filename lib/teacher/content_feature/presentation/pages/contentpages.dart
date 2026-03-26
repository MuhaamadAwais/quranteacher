import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/content_feature/presentation/pages/addhadiescontentpage.dart';
import 'package:quranteacher/teacher/content_feature/presentation/pages/addlessoncontentpage.dart';
import 'package:quranteacher/teacher/content_feature/presentation/pages/addqurancontentpage.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/topcontent.dart';

class Contentpages extends StatefulWidget {
  const Contentpages({super.key});

  @override
  State<Contentpages> createState() => _ContentpagesState();
}

class _ContentpagesState extends State<Contentpages> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        body: Column(
          children: [
            Topcontent(),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: width,
                height: height * 0.07,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.startgreen,
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
                          AppColors.startgreen,
                          AppColors.endgreen,
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Addqurancontentpage(),
                              ),
                            );
                          },
                        ),

                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          3,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          4,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),
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
                          AppColors.islamicNavy600,
                          AppColors.islamicNavy800,
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Addhadiescontentpage(),
                              ),
                            );
                          },
                        ),

                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          3,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),
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
                          AppColors.pink500,
                          AppColors.pink700,
                          () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Addlessoncontentpage(),
                              ),
                            );
                          },
                        ),
                        contidesigncontents(
                          1,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),

                        contidesigncontents(
                          2,
                          width,
                          height * 0.17,
                          "Surah AL -Fathia",
                          "Audio + Translation",
                          "48",
                        ),
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
    VoidCallback onTabFunction,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTabFunction,
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
      ),
    );
  }

  Widget contidesigncontents(
    int index,
    double widthmain,
    double heightmain,
    String surahName,
    String work,
    String NoofStudents,
  ) {
    bool isactive = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: widthmain,
        height: heightmain,
        child: GestureDetector(
          onTap: () {
            // setState(() {
            //   selectedIndexadmin = index;
            // });
          },
          child: Card(
            elevation: 4,
            //elevation: selectedIndexadmin == index ? 10 : 5,
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
                          surahName,
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
                              "active",
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
                      work,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          "$NoofStudents Students",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
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
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: AppColors.islamicNavy700,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                              ),
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
                            child: Text(
                              "Delete",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
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
      ),
    );
  }
}
