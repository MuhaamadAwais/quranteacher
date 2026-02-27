import 'package:flutter/material.dart';

class Topcontainer extends StatelessWidget {
  const Topcontainer({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    final width = size.width;
    return Container(
      height: height * 0.24,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.purple,
            const Color.fromARGB(255, 196, 31, 225),
            const Color.fromARGB(255, 176, 39, 117),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.1),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white38,
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
                SizedBox(width: width * 0.05),
                Text(
                  "Islamic Lessons",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: const EdgeInsets.only(right: 60),
            child: Text(
              "Expand your islamic knowlege",
              style: TextStyle(color: Colors.white, fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
