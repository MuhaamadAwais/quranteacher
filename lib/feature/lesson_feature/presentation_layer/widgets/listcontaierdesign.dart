import 'dart:math';
import 'package:flutter/material.dart';

class Listcontaierdesign extends StatelessWidget {
  Listcontaierdesign({super.key, required this.size})
    : themeColor = _randomColor();

  final Size size;
  final Color themeColor;

  static Color _randomColor() {
    final colors = [
      Colors.red,
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.teal,
      Colors.indigo,
    ];
    return colors[Random().nextInt(colors.length)];
  }

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    final width = size.width;

    return Card(
      elevation: 5,
      child: Container(
        height: height * 0.23,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border(top: BorderSide(color: themeColor, width: 4)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              SizedBox(height: height * 0.04),
              Row(
                children: [
                  Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      color: themeColor.withOpacity(0.75),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      Icons.mosque,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: width * 0.06),
                  Container(
                    height: height * 0.12,
                    width: width * 0.5,
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Salah (Prayer)",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        const Text(
                          "learn the 5 daily prayer",
                          style: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                        SizedBox(height: height * 0.01),
                        Row(
                          children: [
                            const Text(
                              "12 lessons",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: width * 0.013),
                            Text(
                              "75% completed",
                              style: TextStyle(color: themeColor, fontSize: 14),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: width * 0.04),
                  const Icon(Icons.arrow_forward_ios, color: Colors.grey),
                ],
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: height * 0.015,
                  width: width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: height * 0.015,
                      width: width * 0.46,
                      decoration: BoxDecoration(
                        color: themeColor,
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
