import 'package:flutter/material.dart';

class TajweedRulesScreen extends StatelessWidget {
  const TajweedRulesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFC),
      appBar: AppBar(
        title: Text('Tajweed Rules', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFFE91E63),
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
                  colors: [Color(0xFFE91E63), Color(0xFFc2185b)],
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Icon(Icons.record_voice_over, color: Colors.white, size: 64),
                  Text(
                    'Basic Tajweed',
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

            /// Tajweed Rules
            _buildRuleCard(
              'نُونْ سَاكِنَةْ',
              'Noon Saakin',
              'Manner of Izhar',
              'Show clearly from throat',
            ),
            _buildRuleCard(
              'مِيمْ سَاكِنَةْ',
              'Meem Saakin',
              'Meem Shaddah',
              'Double M with ghunnah',
            ),
            _buildRuleCard(
              'قَلْقَلَةْ',
              'Qalqalah',
              'Bounce Sound',
              'Q, T, B, J, D letters',
            ),
            _buildRuleCard(
              'إِخْفَاءْ',
              'Ikhfa',
              'Hidden',
              'Noon + Ba/Ta/Ya/Jim/Dal',
            ),
            _buildRuleCard(
              'غُنَّةْ',
              'Ghunnah',
              'Nasal Sound',
              '2.5 seconds on Meem/Noon',
            ),

            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  Widget _buildRuleCard(
    String arabic,
    String english,
    String rule,
    String desc,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFE91E63).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  arabic,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      english,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(rule, style: TextStyle(color: Colors.grey[600])),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(desc, style: TextStyle(color: Colors.grey[600], height: 1.5)),
        ],
      ),
    );
  }
}
