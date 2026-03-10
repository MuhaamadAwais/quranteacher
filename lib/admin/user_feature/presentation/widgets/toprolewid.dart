import 'package:flutter/material.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/searchuserswid.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/textforuserwid.dart';
import 'package:quranteacher/admin/user_feature/presentation/widgets/topcontiwid.dart';

class Toprolewid extends StatelessWidget {
  const Toprolewid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Topcontiwid(),
        Positioned(left: 20,
        right: 20,
         top: 20, child: Textforuserwid()),
        Positioned(
          top: 100,
          left: 20,
          right: 20,
           child: Searchuserswid()),
      ],
    );
  }
}
