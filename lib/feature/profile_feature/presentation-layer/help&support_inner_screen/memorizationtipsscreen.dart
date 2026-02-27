import 'package:flutter/material.dart';

class MemorizationTipsScreen extends StatelessWidget {
  const MemorizationTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text('Memorization Tips', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFFF9800),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFFFF9800), Color(0xFFe68900)],
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
            _buildTipCard(
              1,
              'Repeat 7 Times',
              'Daily repetition is key to Quran Hifz',
            ),
            _buildTipCard(
              2,
              'Understand Meaning',
              'Tadabbur increases retention 3x',
            ),
            _buildTipCard(
              3,
              'Night Revision',
              'Revise before sleep - brain processes overnight',
            ),
            _buildTipCard(4, 'Audio Loop', 'Play recitation while working'),
            _buildTipCard(5, 'Write by Hand', 'Handwriting activates memory'),
            _buildTipCard(6, 'Teach Others', 'Teaching = 90% retention'),
            _buildTipCard(
              7,
              'Dua Before Study',
              'Astaghfirullah 100x before memorization',
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
            backgroundColor: Color(0xFFFF9800).withOpacity(0.2),
            child: Text(
              '$number',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Color(0xFFFF9800),
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
