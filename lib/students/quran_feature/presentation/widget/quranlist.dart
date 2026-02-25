import 'package:flutter/material.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranapimodel.dart';
import 'package:quranteacher/students/quran_feature/presentation/widget/qurandesign.dart';

class Quranlist extends StatelessWidget {
  const Quranlist({super.key, required this.quranapimodel});
  final List<Quranapimodel> quranapimodel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
  physics: NeverScrollableScrollPhysics(),
  shrinkWrap: true,
      itemBuilder: (context, index) =>
          Qurandesign(quranapimodel: quranapimodel[index]),
      separatorBuilder: (context, index) => SizedBox(height: 0),
      itemCount: quranapimodel.length,
    );
  }
}
