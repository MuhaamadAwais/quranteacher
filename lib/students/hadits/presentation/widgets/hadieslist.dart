import 'package:flutter/material.dart';
import 'package:quranteacher/students/hadits/presentation/pages/hadiesmodelapi.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/contidesignhadies.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/hadiesconti.dart';

class Hadieslist extends StatelessWidget {
  const Hadieslist({super.key, required this.hadiesmodelapi});
  final List<Hadiesmodelapi> hadiesmodelapi;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
    shrinkWrap: true, 
    physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          Contidesignhadies(hadiesmodelapi: hadiesmodelapi[index]),
      separatorBuilder: (context, index) => SizedBox(height: 0),
      itemCount: hadiesmodelapi.length,
    );
  }
}
