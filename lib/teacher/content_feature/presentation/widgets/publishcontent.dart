import 'package:flutter/material.dart';

class Publishcontent extends StatelessWidget {
  final IconData iconconti;
  final String publisname;
  final Color startconticolor;
  final Color endconticolor;
  const Publishcontent({
    super.key,
    required this.iconconti,
    required this.publisname,
    required this.startconticolor,
    required this.endconticolor,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.09,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [startconticolor, endconticolor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconconti, color: Colors.white, size: 24),
              SizedBox(width: 10),
              Text(
                publisname,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
