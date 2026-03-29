import 'package:flutter/material.dart';

class Qurantopconti extends StatelessWidget {
  const Qurantopconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      width: width,
      height: height * 0.25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        gradient: LinearGradient(
          colors: [const Color(0xFF006633), const Color(0xCC054632)],
          begin: Alignment.topCenter,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}
