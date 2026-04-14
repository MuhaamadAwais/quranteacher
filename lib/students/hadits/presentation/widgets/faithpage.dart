import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class FaithPage extends StatefulWidget {
  const FaithPage({super.key});

  @override
  State<FaithPage> createState() => _FaithPageState();
}

class _FaithPageState extends State<FaithPage>
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
      // appBar: a
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopcommonContainer(
                  title: ' Faith',
                  subTitle: "Faith: Peace & Strength",
                ),
                SizedBox(height: 20),

                // 🔥 1. Title (400ms)
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
                  child: const Center(
                    child: Text(
                      "Quran Say About Faith",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGreen,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 2. Surah Card (550ms)
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
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Card(
                      color: Newcolors.green100,
                      child: Padding(
                        padding: const EdgeInsets.all(25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'سورۃ الاخلاص (112:1-4)',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'قُلْ هُوَ اللّهُ أَحَدٌ ۝ اللّهُ الصَّمَدُ ۝ لَمْ يَلِدْ وَلَمْ يُولَدْ ۝ وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ۝',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'ترجمہ: کہو! وہ اللہ ایک ہے۔ اللہ بےنیاز ہے۔ نہ اس نے کسی کو جنا اور نہ وہ پیدا کیا گیا۔ اور نہ اس کا کوئی ہمسر ہے۔',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 3. Faith Points Title (700ms)
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
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: const Text(
                      'Five Foundations of Faith',
                      style: TextStyle(
                        color: AppColors.textGreen,

                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // 🔥 4. Faith Points List (Staggered 850ms+)
                ...List.generate(
                  5,
                  (index) => TweenAnimationBuilder<double>(
                    duration: Duration(milliseconds: 850 + (index * 100)),
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
                      padding: const EdgeInsets.only(left: 18, right: 18),
                      child: _buildFaithPoint(
                        [
                          Icons.account_balance,
                          Icons.menu_book,
                          Icons.library_books,
                          Icons.history,
                          Icons.event,
                        ][index],
                        [
                          'اللہ پر ایمان',
                          'فرشتوں پر ایمان',
                          'کتابوں پر ایمان',
                          'رسولوں پر ایمان',
                          'آخرت پر ایمان',
                        ][index],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFaithPoint(IconData icon, String text) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      color: Newcolors.green100,
      child: ListTile(
        leading: Icon(icon, color: Colors.green[800]),
        title: Text(text, style: const TextStyle(fontWeight: FontWeight.w600)),
      ),
    );
  }
}
