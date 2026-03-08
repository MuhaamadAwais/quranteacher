import 'package:flutter/material.dart';

class Lastcontainer extends StatelessWidget {
  const Lastcontainer({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    final widht = size.width;
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: height * 0.14,
        width: widht * 0.91,
        decoration: BoxDecoration(
          color: const Color.fromARGB(95, 108, 234, 112),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.green),
        ),
        child: Row(
          children: [
            SizedBox(width: widht * 0.03),
            Container(
              height: height * 0.1,
              width: widht * 0.2,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Icon(Icons.star, size: 40, color: Colors.yellow),
            ),
            SizedBox(width: widht * 0.06),
            Container(
              height: height * 0.12,
              width: widht * 0.5,
              color: Colors.transparent,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.01),
                  const Text(
                    "Begin Your Journey",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  SizedBox(height: height * 0.01),
                  const Text(
                    "Start with basic prayers and duas",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
