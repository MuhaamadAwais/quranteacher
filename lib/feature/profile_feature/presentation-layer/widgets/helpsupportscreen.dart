import 'package:flutter/material.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/help&support_inner_screen/howtotakequizscreen.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/help&support_inner_screen/memorizationtipsscreen.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/help&support_inner_screen/tajweedrulesscreen.dart';

class HelpSupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            Icon(Icons.help_outline, color: Colors.white),
            SizedBox(width: 12),
            Text(
              'Help & Support',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
        backgroundColor: Color(0xFF40C4FF),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Welcome Card
            _buildWelcomeCard(),
            SizedBox(height: 24),

            /// Quick Help Buttons
            _buildQuickHelpSection(context),
            SizedBox(height: 24),

            /// FAQs Section
            _buildFaqSection(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF40C4FF), Color(0xFF2196F3)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 20,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(Icons.support_agent, color: Colors.white, size: 64),
          SizedBox(height: 16),
          Text(
            'Need Help?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'We\'re here to help you in your Quran learning journey',
            style: TextStyle(
              color: Colors.white.withOpacity(0.9),
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildQuickHelpSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Quick Help',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 16),
        GridView.count(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
          children: [
            _buildQuickHelpButton(
              icon: Icons.menu_book_sharp,
              title: 'Learn Quran Guide',
              color: Color(0xFF4CAF50),
              context: context,
            ),
            _buildQuickHelpButton(
              icon: Icons.bookmark,
              title: 'Memorization Tips',
              color: Color(0xFFFF9800),
              context: context,
            ),
            _buildQuickHelpButton(
              icon: Icons.play_lesson,
              title: 'Tajweed Rules',
              color: Color(0xFFE91E63),
              context: context,
            ),
            _buildQuickHelpButton(
              icon: Icons.audiotrack,
              title: 'Recitation Help',
              color: Color(0xFF9C27B0),
              context: context,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildFaqSection() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.question_answer, color: Color(0xFF40C4FF), size: 28),
              SizedBox(width: 12),
              Text(
                'Frequently Asked Questions',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 20),
          _buildFaqItem(
            question: 'How to memorize Quran faster?',
            answer:
                'Use repetition method 7 times daily, revise previous lessons, listen to recitation while sleeping.',
          ),
          _buildFaqItem(
            question: 'What if I miss a live class?',
            answer:
                'All classes are recorded. Go to "My Classes" → "Recordings" section.',
          ),
          _buildFaqItem(
            question: 'How to improve Tajweed?',
            answer:
                'Practice with slow recitation, focus on Makharij, use our Tajweed exercises daily.',
          ),
        ],
      ),
    );
  }

  // Helper Widgets
  Widget _buildQuickHelpButton({
    required IconData icon,
    required String title,
    required Color color,
    required BuildContext context,
  }) {
    return InkWell(
      onTap: () {
        // Quick Help buttons mein onTap:

        if (title == 'Learn Quran Guide') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => HowToTakeQuizScreen()),
          );
        } else if (title == 'Memorization Tips') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => MemorizationTipsScreen()),
          );
        } else if (title == 'Tajweed Rules') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => TajweedRulesScreen()),
          );
        } else if (title == 'Recitation Help') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.blue,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              content: Center(
                child: Text(
                  "in processing",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: color.withOpacity(0.2)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color, size: 32),
            SizedBox(height: 12),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFaqItem({required String question, required String answer}) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Text(
            answer,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[600],
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
