import 'package:flutter/material.dart';

class PrivacySecurityScreen extends StatelessWidget {
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
            Icon(Icons.security, color: Colors.white),
            SizedBox(width: 12),
            Text(
              'Privacy & Security',
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
            /// Header Card
            _buildHeaderCard(),
            SizedBox(height: 24),

            /// Security Status
            _buildSecurityStatus(),
            SizedBox(height: 24),

            /// Privacy Sections
            _buildPrivacySection(),
            SizedBox(height: 24),

            /// Data Usage
            _buildDataUsageSection(),
            SizedBox(height: 24),

            /// Account Actions

            /// Legal Links
            _buildLegalLinks(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
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
          Icon(Icons.shield_outlined, color: Colors.white, size: 64),
          SizedBox(height: 16),
          Text(
            'Your Privacy is Protected',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 8),
          Text(
            'We follow Islamic principles of trust and transparency',
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

  Widget _buildSecurityStatus() {
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
        children: [
          Row(
            children: [
              Icon(Icons.security, color: Color(0xFF4CAF50), size: 28),
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Secured',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Your data is encrypted and protected',
                      style: TextStyle(color: Colors.grey[600], fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Color(0xFF4CAF50).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.verified, size: 16, color: Color(0xFF4CAF50)),
                    SizedBox(width: 4),
                    Text(
                      'Secure',
                      style: TextStyle(
                        color: Color(0xFF4CAF50),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPrivacySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What We Collect',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.black87,
          ),
        ),
        SizedBox(height: 16),
        _buildPrivacyItem(
          icon: Icons.person_outline,
          title: 'Basic Profile',
          subtitle: 'Name, Quran progress, learning goals',
        ),
        _buildPrivacyItem(
          icon: Icons.quiz_outlined,
          title: 'Learning Data',
          subtitle: 'Quiz scores, memorization stats',
        ),
        _buildPrivacyItem(
          icon: Icons.schedule,
          title: 'Usage Patterns',
          subtitle: 'Study time, favorite surahs (anonymized)',
        ),
      ],
    );
  }

  Widget _buildDataUsageSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.block, color: Colors.red, size: 28),
            SizedBox(width: 12),
            Text(
              'What We NEVER Do',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.red[700],
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        _buildUsageItem(
          icon: Icons.close,
          text: '✅ Never sell your data',
          color: Colors.green,
        ),
        _buildUsageItem(
          icon: Icons.close,
          text: '✅ No ads tracking',
          color: Colors.green,
        ),
        _buildUsageItem(
          icon: Icons.close,
          text: '✅ No third-party sharing',
          color: Colors.green,
        ),
        _buildUsageItem(
          icon: Icons.security,
          text: '🔒 End-to-end encryption',
          color: Color(0xFF40C4FF),
        ),
      ],
    );
  }

  Widget _buildPrivacyItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF40C4FF).withOpacity(0.1),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Color(0xFF40C4FF)),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
                SizedBox(height: 4),
                Text(subtitle, style: TextStyle(color: Colors.grey[600])),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUsageItem({
    required IconData icon,
    required String text,
    required Color color,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 20),
          ),
          SizedBox(width: 16),
          Expanded(
            child: Text(text, style: TextStyle(fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade200),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, color: color),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey[500]),
          ],
        ),
      ),
    );
  }

  Widget _buildLegalLinks() {
    return Column(
      children: [
        Divider(),
        SizedBox(height: 16),
        _buildLegalLink('Privacy Policy', Icons.description_outlined),
        _buildLegalLink('Terms of Service', Icons.gavel_outlined),
        _buildLegalLink('Cookie Policy', Icons.cookie_outlined),
      ],
    );
  }

  Widget _buildLegalLink(String title, IconData icon) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: () {},
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(icon, color: Color(0xFF40C4FF)),
              SizedBox(width: 16),
              Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
              Spacer(),
              Icon(Icons.done_outline_sharp, size: 16, color: Colors.green),
            ],
          ),
        ),
      ),
    );
  }
}
