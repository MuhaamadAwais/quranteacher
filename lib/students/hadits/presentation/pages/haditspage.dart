import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/pages/hadiesmodelapi.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/hadiesconti.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/hadieslist.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/haditsname.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/haditssearch.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/populartopicconti.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/tophadits.dart';

void main() {
  runApp(MaterialApp(home: Haditspage()));
}

final List<Hadiesmodelapi> hadiesmodelapi = [
  Hadiesmodelapi(
    engNamehadies: "Sahih Bukhari",
    urduNamehadies: "صحیح بخاری",
    hadiescollection: 7563,
    startcolor: AppColors.backgroundStart,
    endcolor: AppColors.islamicGreen,
  ),

  Hadiesmodelapi(
    engNamehadies: "Sahih Muslim",
    urduNamehadies: "صحیح مسلم",
    hadiescollection: 7190,
    startcolor: AppColors.islamicNavy500,
    endcolor: AppColors.islamicNavy600,
  ),

  Hadiesmodelapi(
    engNamehadies: "Sahih Abu Dawood",
    urduNamehadies: "صحیح ابوداؤد",
    hadiescollection: 7563,
    startcolor: AppColors.pink700,
    endcolor: AppColors.pink500,
  ),

  Hadiesmodelapi(
    engNamehadies: "Jami At-Tirmdhii",
    urduNamehadies: "جامع ترمذی",
    hadiescollection: 7563,
    startcolor: Colors.orangeAccent,
    endcolor: Colors.orange,
  ),

  Hadiesmodelapi(
    engNamehadies: "Sunan An-Nasai",
    urduNamehadies: "سنن نسائی",
    hadiescollection: 7563,
    startcolor: Colors.redAccent,
    endcolor: Colors.red,
  ),

  Hadiesmodelapi(
    engNamehadies: "Sunan Ibn Majah",
    urduNamehadies: "سنن ابن ماجہ",
    hadiescollection: 7563,
    startcolor: AppColors.islamicNavy300,
    endcolor: AppColors.islamicNavy400,
  ),
];

class Haditspage extends StatefulWidget {
  const Haditspage({super.key});

  @override
  State<Haditspage> createState() => _HaditspageState();
}

class _HaditspageState extends State<Haditspage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Tophadits(),
                  Positioned(top: 20, left: 20, child: Haditsname()),
                  Positioned(
                    top: 70,
                    left: 20,
                    right: 20,
                    child: Haditssearch(),
                  ),
                  Positioned(
                    top: 150,
                    left: 20,
                    right: 20,
                    child: Hadiesconti(),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Collection",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Hadieslist(hadiesmodelapi: hadiesmodelapi),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Popular Topic",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),

              Populartopicconti(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
