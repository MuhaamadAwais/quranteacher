import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class HowToTakeQuizScreen extends StatelessWidget {
  const HowToTakeQuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text('Learn Quran Guide', style: TextStyle(color: Colors.white)),
      //   backgroundColor: Color(0xFF4CAF50),
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(0),
          child: Column(
            children: [
              TopcommonContainer(title: 'Learn Quran Guide'),
              SizedBox(height: 24),

              /// Header
              Container(
                padding: EdgeInsets.all(40),
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
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: _buildStepCard(
                  Icons.timer,
                  '1. Start with Intention',
                  'Start with Intention & Focus and applying it in life.',
                  size,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: _buildStepCard(
                  Icons.check_circle,
                  '2. and applying it in life.',
                  'Even 5-10 minutes a day consistently is better than long',
                  size,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: _buildStepCard(
                  Icons.stars,
                  '3. Understand the Meaning ',
                  'Learn the translation of verses in your language.',
                  size,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: _buildStepCard(
                  Icons.repeat,
                  '4. Repeat and Revise',
                  'Repeat what you’ve learned every day.',
                  size,
                ),
              ),

              SizedBox(height: 24),

              /// Start Practice Button
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepCard(IconData icon, String title, String desc, Size size) {
    final height = size.height;
    final width = size.width;
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
          Container(
            height: height * 0.1,
            width: width * 0.1,
            decoration: BoxDecoration(
              gradient: AppColors.icongradient,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.textWhite),
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
