import 'package:flutter/material.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranapimodel.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/quranHadithcard.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/quranlist.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/qurantex.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/qurantopconti.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/searchquran.dart';

final List<Quranapimodel> quranapimodel = [
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
  Quranapimodel(
    surahNo: 1,
    engName: "Al-Fatihah",
    urduName: "الفاتحة",
    WhichCity: "Mecca",
    totalVerses: 7,
    Complete: 70,
  ),
];

class Quranwid extends StatefulWidget {
  const Quranwid({super.key});
  @override
  State<Quranwid> createState() => _QuranwidState();
}

class _QuranwidState extends State<Quranwid>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔥 1. Header Stack (Natural flow with main animation)
              Stack(
                children: [
                  Qurantopconti(),
                  Positioned(top: 20, left: 20, child: Qurantex()),
                  Positioned(
                    top: 80,
                    left: 20,
                    right: 20,
                    child: Quranhadithcard(),
                  ),
                ],
              ),

              SizedBox(height: 10),
              Searchquran(),
              SizedBox(height: 10),

              // 🔥 2. Quran List - Staggered Animation (index * 150ms)
              Quranlist(quranapimodel: quranapimodel),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
