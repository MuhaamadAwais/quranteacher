import 'package:flutter/material.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranapimodel.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/quranlist.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/qurantex.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/qurantopconti.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/searchquran.dart';

void main() {
  runApp(MaterialApp(home: Quranwid()));
}

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

class _QuranwidState extends State<Quranwid> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Qurantopconti(),
                  Positioned(top: 40, left: 20, child: Qurantex()),
      
                  Positioned(top: 80, left: 10,right: 10, child: Searchquran()),
                ],
              ),
      
               Quranlist(quranapimodel: quranapimodel),
            ],
          ),
        ),
      ),
    );
  }
}
