import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class MannersPage extends StatefulWidget {
  const MannersPage({super.key});

  @override
  State<MannersPage> createState() => _MannersPageState();
}

class _MannersPageState extends State<MannersPage>
    with SingleTickerProviderStateMixin {
  bool _sadkh = false;
  bool kindness = false;
  bool parent_respect = false;
  bool relative_respect = false;
  bool clean = false;

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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     'Manners',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 22,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: Colors.orange[400],
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
                TopcommonContainer(
                  title: 'Manners',
                  subTitle: "Manners: Respect & Grace",
                ),
                const SizedBox(height: 20),

                // 🔥 1. Main Header (400ms)
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
                      'Quran Say About Manners',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.islamicNavy950,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 2. Quran Ayat Card (550ms)
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
                      color: Colors.orange[50],
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            const Text(
                              'سورۃ الحجرات (49:11)',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'يَا أَيُّهَا الَّذِينَ آمَنُوا لَا يَسْخَرْ قَوْمٌ مِنْ قَوْمٍ',
                              style: TextStyle(fontSize: 18),
                            ),
                            const Text(
                              'اے ایمان والو! کوئی قوم کسی دوسری قوم کا مذاق نہ اڑائے...',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 3. Important Manners Title (700ms)
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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      'Important manners:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.islamicNavy950,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 4. Expandable Cards (Staggered 850ms+)
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
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: _buildMannerCard(index),
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildMannerCard(int index) {
    final cards = [
      _buildExpandableCard(
        title: 'صدق (سچائی)',
        icon: Icons.person,
        color: Colors.orange,
        content:
            'قرآن: سورۃ التوبہ (9:119)\n\n"اے ایمان والو! اللہ سے ڈرو اور سچوں کے ساتھ رہو"\n\nحدیث: "سچائی نجات ہے، جھوٹ ہلاکت"\n\nعملی:\n✅ وعدہ ہمیشہ نبھائیں\n✅ چھوٹا جھوٹ بھی نہ بولیں\n✅ قسم کھاتے وقت سچ\n✅ "نہیں" کہنے میں شرم نہ کریں\n✅ بچوں کو سچ سکھائیں\n\nفائدہ: جنت کی ضمانت',
        isExpanded: _sadkh,
        onTap: () => setState(() => _sadkh = !_sadkh),
      ),
      _buildExpandableCard(
        title: 'رحم دلی',
        icon: Icons.favorite,
        color: Colors.red,
        content:
            'قرآن: سورۃ النحل (16:90)\n\n"...اللہ انصاف، احسان اور قرابت داروں کو دینے کا حکم دیتا"\n\nحدیث: "جو شخص یہ چاہتا ہے کہ اس کے رزق میں وسعت ہو اور اس کی عمر میں برکت ہو تو اسے چاہیے کہ صلہ رحمی کرے۔"  \n  Sahih al-Bukhari،\n حدیث نمبر 5986\n\nعملی:\n❤️ یتیم کی کفالت\n❤️ بوڑھوں کی عزت\n❤️ غریب کو کھلائیں\n❤️ غلطی معاف کریں\n❤️ مسکرانا صدقہ\n',
        isExpanded: kindness,
        onTap: () => setState(() => kindness = !kindness),
      ),
      _buildExpandableCard(
        title: 'والدین کی خدمت',
        icon: Icons.family_restroom,
        color: Colors.purpleAccent,
        content:
            'قرآن: سورۃ بنی اسرائیل (17:23)\n\n"اور تمہارے رب نے فیصلہ کر دیا ہے کہ تم اس کے سوا کسی کی عبادت نہ کرو اور والدین کے ساتھ احسان کرو۔"\n\n-حدیث: "اللہ کی رضا والد کے رضا میں ہے اور اللہ کی ناراضی والد کے ناراض ہونے میں ہے"  \n Jami` at-Tirmidhi،:\n حدیث نمبر  1899\n\nعملی:\n❤️ والدین سے نرمی سے بات کریں\n❤️ ان کی خدمت کو سعادت سمجھیں\n❤️ ان کے لیے دعا کریں\n❤️ غلطی معاف کریں\n❤️ ان کی ضروریات پوری کریں\n',
        isExpanded: parent_respect,
        onTap: () => setState(() => parent_respect = !parent_respect),
      ),
      _buildExpandableCard(
        title: 'پڑوسی حقوق',
        icon: Icons.family_restroom,
        color: Colors.lightGreenAccent,
        content:
            'قرآن:سورۃ النساء (4:36))\n\n"اور اللہ کی عبادت کرو اور اس کے ساتھ کسی کو شریک نہ ٹھہراؤ، اور والدین کے ساتھ احسان کرو… اور رشتہ دار پڑوسی اور اجنبی پڑوسی کے ساتھ بھی\n\nحدیث: "وہ مومن نہیں جس کا پڑوسی اس کی تکلیف سے محفوظ نہ ہو"   \n Sahih al-Bukhari، \nحدیث نمبر  6016\n\nعملی:\n❤️ پڑوسی سے حسنِ سلوک کریں\n❤️ ان کو تکلیف نہ دیں\n❤️ خوشی و غم میں شریک ہوں\n❤️ ضرورت میں مدد کریں\n❤️ ماحول کو آلودہ نہ کریں\n',
        isExpanded: relative_respect,
        onTap: () => setState(() => relative_respect = !relative_respect),
      ),
      _buildExpandableCard(
        title: 'صفائی',
        icon: Icons.clean_hands,
        color: const Color.fromARGB(255, 3, 90, 161),
        content:
            'قرآن سورۃ البقرہ (2:222))\n\n"“بے شک اللہ توبہ کرنے والوں کو پسند کرتا ہے اور پاکیزگی اختیار کرنے والوں کو پسند کرتا ہے۔”\n\nحدیث: "“صفائی نصف ایمان ہے۔”"   \n Sahih Muslim، \n حدیث نمبر  223\n\nعملی:\n❤️ پجسم اور لباس صاف رکھیں\n❤️ گھر اور گلی کو صاف رکھیں\n❤️ کچرا مقررہ جگہ پر ڈالیں\n❤️ وضو اور طہارت کا اہتمام کریں\n❤️ سلام اور مسکراہٹ سے پیش آئیں\n',
        isExpanded: clean,
        onTap: () => setState(() => clean = !clean),
      ),
    ];

    return cards[index];
  }

  Widget _buildExpandableCard({
    required String title,
    required IconData icon,
    required Color color,
    required String content,
    required bool isExpanded,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      color: Colors.orange[50],
      child: Column(
        children: [
          ListTile(
            onTap: onTap,
            leading: Icon(icon, color: color, size: 30),
            title: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            trailing: Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
          ),
          if (isExpanded) ...[
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: const BorderRadius.vertical(),
              ),
              child: SingleChildScrollView(
                child: Text(
                  content,
                  style: const TextStyle(fontSize: 15, height: 1.6),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
