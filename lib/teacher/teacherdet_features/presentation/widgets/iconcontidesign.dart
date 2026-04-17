import 'package:flutter/material.dart';

class Iconcontidesign extends StatelessWidget {
  final IconData icons;
  const Iconcontidesign({super.key, required this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [const Color(0xFF006633), const Color(0xCC054632)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Icon(
          icons,
          color: Colors.white,
          size: 24,
        ),
      ),
    );
  }
}
