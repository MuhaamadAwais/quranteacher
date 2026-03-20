import 'package:flutter/material.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranapimodel.dart';
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
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // Same as LessonScreen
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: FadeTransition(
          opacity: _fadeAnimation, // 🔥 Main Fade (LessonScreen same)
          child: SingleChildScrollView(
            child: Column(
              children: [
                // 🔥 1. Header Stack (Natural flow with main animation)
                Stack(
                  children: [
                    Qurantopconti(),
                    Positioned(top: 40, left: 20, child: Qurantex()),
                    Positioned(
                      top: 90,
                      left: 10,
                      right: 10,
                      child: Searchquran(),
                    ),
                  ],
                ),

                SizedBox(height: 10),

                // 🔥 2. Quran List - Staggered Animation (index * 150ms)
                Quranlist(quranapimodel: quranapimodel),

                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
