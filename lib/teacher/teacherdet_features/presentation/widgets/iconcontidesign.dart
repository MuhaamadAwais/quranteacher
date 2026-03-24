import 'package:flutter/material.dart';

class Iconcontidesign extends StatelessWidget {
  const Iconcontidesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
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
          Icons.supervisor_account_outlined,
          color: Colors.white,
          size: 45,
        ),
      ),
    );
  }
}
