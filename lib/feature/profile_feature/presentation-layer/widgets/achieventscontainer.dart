import 'package:flutter/material.dart';

class Achieventscontainer extends StatelessWidget {
  const Achieventscontainer({
    super.key,
    required this.height,
    required this.width,
    required this.achieventsicon,
    this.iconcolor = Colors.amber,
  });
  final double height;
  final double width;
  final Icon achieventsicon;
  final Color iconcolor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        height: height * 0.1,
        width: width * 0.2,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Icon(achieventsicon.icon, color: iconcolor, size: 40),
      ),
    );
  }
}
