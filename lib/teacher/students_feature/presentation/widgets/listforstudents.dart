import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/students_feature/presentation/pages/studentmodelprogress.dart';
import 'package:quranteacher/teacher/students_feature/presentation/widgets/studentdesign.dart';

class Listforstudents extends StatelessWidget {
  const Listforstudents({super.key, required this.studentmodelprogress});
  final List<Studentmodelprogress> studentmodelprogress;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) =>
          Studentdesign(studentmodelprogress: studentmodelprogress[index]),
      separatorBuilder: (context, index) => SizedBox(height: 10),
      itemCount: studentmodelprogress.length,
    );
  }
}
