import 'package:flutter/material.dart';

class HowToTakeQuizScreen extends StatelessWidget {
  const HowToTakeQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text('Learn Quran Guide', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF4CAF50),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            /// Header
            Container(
              padding: EdgeInsets.all(24),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF4CAF50), Color(0xFF45a049)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Icon(Icons.menu_book, color: Colors.white, size: 64),
                  SizedBox(height: 16),
                  Text(
                    'Learn Quran Guide',
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

            /// Steps
            _buildStepCard(
              Icons.timer,
              '1. Start with Intention',
              'Start with Intention & Focus and applying it in life.',
            ),
            _buildStepCard(
              Icons.check_circle,
              '2. and applying it in life.',
              'Even 5-10 minutes a day consistently is better than long',
            ),
            _buildStepCard(
              Icons.stars,
              '3. Understand the Meaning ',
              'Learn the translation of verses in your language.',
            ),
            _buildStepCard(
              Icons.repeat,
              '4. Repeat and Revise',
              'Repeat what you’ve learned every day.',
            ),

            SizedBox(height: 24),

            /// Start Practice Button
          ],
        ),
      ),
    );
  }

  Widget _buildStepCard(IconData icon, String title, String desc) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF4CAF50).withOpacity(0.1),
            child: Icon(icon, color: Color(0xFF4CAF50)),
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
                SizedBox(height: 4),
                Text(desc, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
