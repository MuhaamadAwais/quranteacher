import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/help&support_inner_screen/howtotakequizscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/help&support_inner_screen/memorizationtipsscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/help&support_inner_screen/tajweedrulesscreen.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class HelpSupportScreen extends StatefulWidget {
  const HelpSupportScreen({super.key});

  @override
  State<HelpSupportScreen> createState() => _HelpSupportScreenState();
}

class _HelpSupportScreenState extends State<HelpSupportScreen>
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
      // // appBar: AppBar(
      // //   leading: IconButton(
      // //     icon: const Icon(Icons.arrow_back, color: Colors.white),
      // //     onPressed: () => Navigator.pop(context),
      // //   ),
      // //   title: Row(
      // //     children: [
      // //       const Icon(Icons.help_outline, color: Colors.white),
      // //       const SizedBox(width: 12),
      // //       const Text(
      // //         'Help & Support',
      // //         style: TextStyle(
      // //           color: Colors.white,
      // //           fontWeight: FontWeight.w700,
      // //           fontSize: 18,
      // //         ),
      // //       ),
      // //     ],
      // //   ),
      // //   backgroundColor: const Color(0xFF40C4FF),
      //   elevation: 0,
      // ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopcommonContainer(title: "Help & Support"),

                const SizedBox(height: 30),
                // 🔥 1. Welcome Card (400ms)
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: _buildWelcomeCard(),
                  ),
                ),
                const SizedBox(height: 24),

                // 🔥 2. Quick Help Section (550ms)
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: _buildQuickHelpSection(context),
                  ),
                ),
                const SizedBox(height: 24),

                // 🔥 3. FAQ Section (700ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 700),
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 24, right: 24),
                    child: _buildFaqSection(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Same helper methods unchanged...
  Widget _buildWelcomeCard() => Container(
    width: double.infinity,
    padding: const EdgeInsets.all(24),
    decoration: BoxDecoration(
      gradient: const LinearGradient(
        colors: [Color.fromARGB(255, 19, 61, 22), Newcolors.green900],
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
        const Icon(Icons.support_agent, color: Colors.white, size: 64),
        const SizedBox(height: 16),
        const Text(
          'Need Help?',
          style: TextStyle(
            color: AppColors.textWhite,
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 2),
        Text(
          "We're here to help you in your Quran learning journey",
          style: TextStyle(color: Colors.white.withOpacity(0.9), fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );

  Widget _buildQuickHelpSection(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'Quick Help',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w700,
          color: AppColors.textGreen,
        ),
      ),
      //const SizedBox(height: 2),
      GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        crossAxisSpacing: 14,
        mainAxisSpacing: 12,
        childAspectRatio: 1.1,
        children: [
          _buildQuickHelpButton(
            icon: Icons.menu_book_sharp,
            title: 'Learn Quran Guide',
            color: const Color(0xFF4CAF50),
            context: context,
          ),
          _buildQuickHelpButton(
            icon: Icons.bookmark,
            title: 'Memorization Tips',
            color: const Color(0xFFFF9800),
            context: context,
          ),
          _buildQuickHelpButton(
            icon: Icons.play_lesson,
            title: 'Tajweed Rules',
            color: const Color(0xFFE91E63),
            context: context,
          ),
          _buildQuickHelpButton(
            icon: Icons.audiotrack,
            title: 'Recitation Help',
            color: const Color(0xFF9C27B0),
            context: context,
          ),
        ],
      ),
    ],
  );

  Widget _buildFaqSection() => Container(
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
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(
              Icons.question_answer,
              color: Newcolors.green900,
              size: 28,
            ),
            const SizedBox(width: 12),
            const Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        const SizedBox(height: 20),
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

  Widget _buildQuickHelpButton({
    required IconData icon,
    required String title,
    required Color color,
    required BuildContext context,
  }) => InkWell(
    onTap: () {
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
            backgroundColor: Newcolors.green300,
            behavior: SnackBarBehavior.floating,
            margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            content: const Center(
              child: Text(
                "in processing",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        );
      }
    },
    borderRadius: BorderRadius.circular(16),
    child: Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      shadowColor: Newcolors.green500,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Newcolors.green300),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.05),
              blurRadius: 10,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Newcolors.green800, size: 32),
            const SizedBox(height: 12),
            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    ),
  );

  Widget _buildFaqItem({required String question, required String answer}) =>
      Container(
        margin: const EdgeInsets.only(bottom: 16),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color.fromARGB(109, 200, 230, 201),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade200),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8),
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
