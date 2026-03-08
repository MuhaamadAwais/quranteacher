import 'package:flutter/material.dart';

class PrivacySecurityScreen extends StatefulWidget {
  const PrivacySecurityScreen({super.key});

  @override
  State<PrivacySecurityScreen> createState() => _PrivacySecurityScreenState();
}

class _PrivacySecurityScreenState extends State<PrivacySecurityScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1), // LessonScreen same
    );
    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8FAFC),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            const Icon(Icons.security, color: Colors.white),
            const SizedBox(width: 12),
            Text(
              'Privacy & Security',
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          ],
        ),
        backgroundColor: const Color(0xFF40C4FF),
        elevation: 0,
      ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔥 1. Header Card (400ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 400),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: _buildHeaderCard(),
                ),
                const SizedBox(height: 24),

                // 🔥 2. Security Status (550ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 550),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: _buildSecurityStatus(),
                ),
                const SizedBox(height: 24),

                // 🔥 3. Privacy Section Title (700ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 700),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: _buildPrivacySection(),
                ),
                const SizedBox(height: 24),

                // 🔥 4. Data Usage Section (850ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 850),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.scale(
                        scale: 0.95 + (0.05 * value),
                        child: child,
                      ),
                    );
                  },
                  child: _buildDataUsageSection(),
                ),
                const SizedBox(height: 24),

                // 🔥 5. Legal Links (1000ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 1000),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: _buildLegalLinks(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Same helper methods (unchanged)
  Widget _buildHeaderCard() => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color(0xFF40C4FF), Color(0xFF2196F3)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      borderRadius: BorderRadius.circular(20),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 20,
          offset: const Offset(0, 10),
        ),
      ],
    ),
    child: Column(
      children: [
        const Icon(Icons.shield_outlined, color: Colors.white, size: 64),
        const SizedBox(height: 16),
        const Text(
          'Your Privacy is Protected',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'We follow Islamic principles of trust and transparency',
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Widget _buildSecurityStatus() => Container(
    padding: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: const Offset(0, 2),
        ),
      ],
    ),
    child: Row(
      children: [
        const Icon(Icons.security, color: Color(0xFF4CAF50), size: 28),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Account Secured',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
              ),
              Text(
                'Your data is encrypted and protected',
                style: TextStyle(color: Colors.grey[600], fontSize: 14),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF4CAF50).withOpacity(0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.verified, size: 16, color: Color(0xFF4CAF50)),
              const SizedBox(width: 4),
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
  );

  Widget _buildPrivacySection() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'What We Collect',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: Colors.black87,
        ),
      ),
      const SizedBox(height: 16),
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

  Widget _buildDataUsageSection() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          const Icon(Icons.block, color: Colors.red, size: 28),
          const SizedBox(width: 12),
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
      const SizedBox(height: 16),
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
        color: const Color(0xFF40C4FF),
      ),
    ],
  );

  Widget _buildPrivacyItem({
    required IconData icon,
    required String title,
    required String subtitle,
  }) => Container(
    margin: const EdgeInsets.only(bottom: 12),
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Colors.grey.shade200),
    ),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: const Color(0xFF40C4FF).withOpacity(0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: const Color(0xFF40C4FF)),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
              const SizedBox(height: 4),
              Text(subtitle, style: TextStyle(color: Colors.grey[600])),
            ],
          ),
        ),
      ],
    ),
  );

  Widget _buildUsageItem({
    required IconData icon,
    required String text,
    required Color color,
  }) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 20),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );

  Widget _buildLegalLinks() => Column(
    children: [
      const Divider(),
      const SizedBox(height: 16),
      _buildLegalLink('Privacy Policy', Icons.description_outlined),
      _buildLegalLink('Terms of Service', Icons.gavel_outlined),
      _buildLegalLink('Cookie Policy', Icons.cookie_outlined),
    ],
  );

  Widget _buildLegalLink(String title, IconData icon) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, color: const Color(0xFF40C4FF)),
            const SizedBox(width: 16),
            Text(title, style: TextStyle(fontWeight: FontWeight.w600)),
            const Spacer(),
            const Icon(Icons.done_outline_sharp, size: 16, color: Colors.green),
          ],
        ),
      ),
    ),
  );
}
