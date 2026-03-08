import 'package:flutter/material.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/contenttextwid.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/dataforstackwid.dart';
import 'package:quranteacher/admin/content_feature/presentation/widgets/stackmaincontentwid.dart';

class Topmaincontentwid extends StatelessWidget {
  const Topmaincontentwid({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stackmaincontentwid(),
        Positioned(top: 20, left: 20, right: 20, child: Contenttextwid()),
        Positioned(top: 100, left: 20, right: 20, child: Dataforstackwid()),
      ],
    );
  }
}
