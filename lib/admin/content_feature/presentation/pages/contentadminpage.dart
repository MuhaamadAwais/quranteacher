import 'package:flutter/material.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/QuranAyatCard.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/showContentBottomSheet.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/topmaincontentwid.dart';
import 'package:quranteacher/appcolors.dart';

class Contentadminpage extends StatefulWidget {
  const Contentadminpage({super.key});

  @override
  State<Contentadminpage> createState() => _ContentadminpageState();
}

class _ContentadminpageState extends State<Contentadminpage> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
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
                  color: AppColors.startgreen,
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  isScrollable: false,
                  indicator: BoxDecoration(
                    color: Colors.white, // Selected tab background
                    border: Border.all(color: AppColors.startgreen, width: 4),
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
                        GestureDetector(
                          onTap: () {
                            showContentBottomSheet(context, type: "quran");
                          },
                          child: addconti(
                            width,
                            height * 0.07,
                            "Add Quran Content",
                            AppColors.topmiddle,
                            AppColors.bottommiddle,
                          ),
                        ),

                        QuranAyatCard(
                          quranData: {
                            "title": "الفاتحة",
                            "arabic":
                                "هُوَ الَّذِيْ جَعَلَ لَكُمُ الْأَرْضَ ذَلُوْلًا فَامْشُوْا فِيْ مَنَاكِبِهَا وَكُلُوْا مِنْ رِزْقِهِ ۖ وَإِلَيْهِ النُّشُوْرُ",
                            "translation":
                                "وہی ہے جس نے تمہارے لیے زمین کو نرم و مسخر کر دیا، سو تم اس کے راستوں میں چلو پھرو، اور اس کے (دیئے ہوئے) رزق میں سے کھاؤ، اور اسی کی طرف (مرنے کے بعد) اٹھ کر جانا ہے۔",
                            "reference": "الفاتحة",
                          },
                        ),

                        QuranAyatCard(
                          quranData: {
                            "title": "الفاتحة",
                            "arabic": "Surah AL-Fatihah",
                            "translation": "The Opening",
                            "reference": "الفاتحة",
                          },
                        ),

                        QuranAyatCard(
                          quranData: {
                            "title": "الفاتحة",
                            "arabic": "Surah AL-Fatihah",
                            "translation": "The Opening",
                            "reference": "الفاتحة",
                          },
                        ),

                        SizedBox(height: 30),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        GestureDetector(
                          onTap: () {
                            showContentBottomSheet(context, type: "hadith");
                          },
                          child: addconti(
                            width,
                            height * 0.07,
                            "Add Hadith Content",
                            AppColors.topmiddle,
                            AppColors.bottommiddle,
                          ),
                        ),

                        Column(
                          children: [
                            QuranAyatCard(
                              title: "Hadith",
                              quranData: {
                                "title": "حدیث",
                                "arabic": "إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ",
                                "translation":
                                    "اعمال کا دار و مدار نیتوں پر ہے۔",
                                "reference": "صحیح بخاری",
                              },
                            ),

                            QuranAyatCard(
                              title: "Hadith",
                              quranData: {
                                "title": "حدیث",
                                "arabic": "الدِّينُ النَّصِيحَةُ",
                                "translation": "دین خیر خواہی کا نام ہے۔",
                                "reference": "صحیح مسلم",
                              },
                            ),

                            QuranAyatCard(
                              title: "Hadith",
                              quranData: {
                                "title": "حدیث",
                                "arabic":
                                    "خَيْرُكُمْ مَنْ تَعَلَّمَ الْقُرْآنَ وَعَلَّمَهُ",
                                "translation":
                                    "تم میں سب سے بہتر وہ ہے جو قرآن سیکھے اور سکھائے۔",
                                "reference": "صحیح بخاری",
                              },
                            ),

                            QuranAyatCard(
                              title: "Hadith",
                              quranData: {
                                "title": "حدیث",
                                "arabic": "لَا تَغْضَبْ",
                                "translation": "غصہ نہ کرو۔",
                                "reference": "صحیح بخاری",
                              },
                            ),
                          ],
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
            // setState(() {
            //   selectedIndexadmin = index;
            // });
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
