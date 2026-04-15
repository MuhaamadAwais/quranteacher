import 'package:flutter/material.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class MemorizationTipsScreen extends StatelessWidget {
  const MemorizationTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      // appBar: AppBar(
      //   title: Text('Memorization Tips', style: TextStyle(color: Colors.white)),
      //   backgroundColor: Color(0xFFFF9800),
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(0),
        child: Column(
          children: [
            TopcommonContainer(title: "Memorization Tips"),
            SizedBox(height: 24),
            Container(
              padding: EdgeInsets.all(20),
              height: height * 0.22,
              width: width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 13, 56, 16),
                    Newcolors.green800,
                    const Color.fromARGB(255, 81, 136, 85),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Icon(Icons.bookmark, color: Colors.white, size: 64),
                  Text(
                    '7 Golden Tips',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),

            /// Tips List
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                1,
                'Repeat 7 Times',
                'Daily repetition is key to Quran Hifz',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                2,
                'Understand Meaning',
                'Tadabbur increases retention 3x',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                3,
                'Night Revision',
                'Revise before sleep - brain processes overnight',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                4,
                'Audio Loop',
                'Play recitation while working',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                5,
                'Write by Hand',
                'Handwriting activates memory',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                6,
                'Teach Others',
                'Teaching = 90% retention',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: _buildTipCard(
                7,
                'Dua Before Study',
                'Astaghfirullah 100x before memorization',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTipCard(int number, String title, String desc) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Newcolors.green900,

            child: Text(
              '$number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 8),
                Text(
                  desc,
                  style: TextStyle(color: Colors.grey[600], height: 1.5),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
