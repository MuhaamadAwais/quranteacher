import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/hadits/presentation/pages/hadiesmodelapi.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/hadieslist.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/hadithconta.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/haditsname.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/haditssearch.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/populartopicconti.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/tophadits.dart';

final List<Hadiesmodelapi> hadiesmodelapi = [
  Hadiesmodelapi(
    engNamehadies: "Sahih Bukhari",
    urduNamehadies: "صحیح بخاری",
    hadiescollection: 7563,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.book,
  ),
  Hadiesmodelapi(
    engNamehadies: "Sahih Muslim",
    urduNamehadies: "صحیح مسلم",
    hadiescollection: 7190,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.mosque,
  ),
  Hadiesmodelapi(
    engNamehadies: "Sahih Abu Dawood",
    urduNamehadies: "صحیح ابوداؤد",
    hadiescollection: 7563,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.menu_book,
  ),
  Hadiesmodelapi(
    engNamehadies: "Jami At-Tirmdhii",
    urduNamehadies: "جامع ترمذی",
    hadiescollection: 7563,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.book_online_outlined,
  ),
  Hadiesmodelapi(
    engNamehadies: "Sunan An-Nasai",
    urduNamehadies: "سنن نسائی",
    hadiescollection: 7563,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.store_rounded,
  ),
  Hadiesmodelapi(
    engNamehadies: "Sunan Ibn Majah",
    urduNamehadies: "سنن ابن ماجہ",
    hadiescollection: 7563,
    startcolor: AppColors.startgreen,
    endcolor: AppColors.endgreen,
    icon: Icons.book_sharp,
  ),
];

class Haditspage extends StatefulWidget {
  const Haditspage({super.key});
  @override
  State<Haditspage> createState() => _HaditspageState();
}

class _HaditspageState extends State<Haditspage> with TickerProviderStateMixin {
  late AnimationController _controller;
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;
  late Animation<double> _firstzomm;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _firstzomm = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.fastOutSlowIn,
      ),
    );

    _animationController.forward();
    _controller.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 🔥 1. Header Stack (Natural main animation)
              Stack(
                children: [
                  Tophadits(),
                  Positioned(top: 25, left: 20, child: Haditsname()),
            
                  Positioned(
                    top: 90,
                    left: 20,
                    right: 20,
                    child: ScaleTransition(
                      scale: _firstzomm,
                      child: Hadithconta(),
                    ),
                  ),
                ],
              ),
            
              SizedBox(height: 10),
              Haditssearch(),
              SizedBox(height: 12),
            
              // 🔥 2. "Collection" Title
              Padding(
                padding: const EdgeInsets.only(left: 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      color: Colors.transparent,
                      width: width * 0.32,
                      child: Text(
                        "Collection",
                        style: TextStyle(
                          color: AppColors.textGreen,
            
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            
              // 🔥 3. Hadith List (index * 150ms stagger جیسے LessonScreen)
              Hadieslist(hadiesmodelapi: hadiesmodelapi),
            
              // 🔥 4. "Popular Topic" Title
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Popular Topic",
                        style: TextStyle(
                          color: AppColors.textGreen,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            
              // 🔥 5. Popular Topics (Last item scale effect)
              Populartopicconti(),
            
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
