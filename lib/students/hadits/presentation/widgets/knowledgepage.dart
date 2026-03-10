import 'package:flutter/material.dart';

class KnowledgePage extends StatefulWidget {
  const KnowledgePage({super.key});

  @override
  State<KnowledgePage> createState() => _KnowledgePageState();
}

class _KnowledgePageState extends State<KnowledgePage>
    with SingleTickerProviderStateMixin {
  bool _tajweedExpanded = false;
  bool _tafseerExpanded = false;
  bool _hifzExpanded = false;
  bool _tarjumaExpanded = false;
  bool _qiraatExpanded = false;
  bool _arabicExpanded = false;

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
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Knowledge',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[500],
        elevation: 0,
      ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                      'Acquire knowledge of Quran',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
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
                  child: Card(
                    color: Colors.blue[50],
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          const Text(
                            'سورۃ العلق (96:1-5)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'اقْرَأْ بِاسْمِ رَبِّكَ الَّذِي خَلَقَ ۝ خَلَقَ الْإِنْسَانَ مِنْ عَلَقٍ ۝ اقْرَأْ وَرَبُّكَ الْأَكْرَمُ',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            'پڑھو اپنے رب کے نام سے جس نے پیدا کیا۔ انسان کو جمے ہوئے خون کے لوتھڑے سے پیدا کیا۔ پڑھو! اور تیرا رب بڑا کرم کرنے والا ہے۔',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                // 🔥 3. Quran Studies Title (700ms)
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
                  child: const Text(
                    'Quran Studies:',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(height: 15),

                // 🔥 4. Expandable Cards (Staggered 850ms+)
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
                  child: Column(
                    children: [
                      _buildExpandableCard(
                        title: 'تجوید',
                        icon: Icons.record_voice_over,
                        color: Colors.teal,
                        content:
                            'تجوید = حروف کی صحیح ادائیگی\n\nمخارج: 17\n\nمکی مخرج:\n• حلق (گلا)\n• حلقِ اوسط\n• حلقِ ورب\n\nنکات:\n✅ مَدِّ آرڈِناری = 2 حرکات\n✅ مَدِّ لَازِم = 6 ہمیشہ\n✅ گَرْدَلَہ = R کی آواز\n✅ اضْطَرَارِی مَد = 4-5',
                        isExpanded: _tajweedExpanded,
                        onTap: () => setState(
                          () => _tajweedExpanded = !_tajweedExpanded,
                        ),
                      ),
                      _buildExpandableCard(
                        title: 'تفسیر',
                        icon: Icons.chrome_reader_mode,
                        color: Colors.indigo,
                        content:
                            'تفسیر = قرآن کی تشریح\n\nقسمیں:\n1. تفسیر بالماثور (صحابہ)\n2. تفسیر بالرائے (علماء)\n\nمشہور تفاسیر:\n✅ تفسیر طبری\n✅ تفسیر ابن کثیر\n✅ تفسیر قرطبی\n✅ تفسیر بہشتی زخیرہ\n\nمطالعہ: روزانہ 1 صفحہ',
                        isExpanded: _tafseerExpanded,
                        onTap: () => setState(
                          () => _tafseerExpanded = !_tafseerExpanded,
                        ),
                      ),
                      _buildExpandableCard(
                        title: 'حفظ',
                        icon: Icons.bookmark,
                        color: Colors.amber,
                        content:
                            'قرآن حفظ کا طریقہ:\n\n1. ناظرہ = 4 بار پڑھیں\n2. مناجات = 3 بار سنائیں\n3. معاہدہ = 1 بار سنائیں\n\nپلان:\n📖 30 جزء = 20 دن\n📖 1/2 حصہ روزانہ\n\nTips:\n✅ صبح کا وقت بہترین\n✅ وضو کر کے حفظ\n✅ ترجمہ سمجھیں\n✅ تکرار ضروری',
                        isExpanded: _hifzExpanded,
                        onTap: () =>
                            setState(() => _hifzExpanded = !_hifzExpanded),
                      ),
                      _buildExpandableCard(
                        title: 'ترجمہ',
                        icon: Icons.language,
                        color: Colors.green,
                        content:
                            'اردو تراجم:\n\n✅ مولانا فتح محمد جالندھری\n✅ سید ابو الاعلیٰ مودودی\n✅ طاہر القادری\n✅ مرزا تقی\n✅ نعمت اللہ اعزی\n\nاستعمال:\n1. پہلے ترجمہ پڑھیں\n2. معنی سمجھیں\n3. پھر عربی پڑھیں\n\nفائدہ: 80% قرآن سمجھ آئے گا',
                        isExpanded: _tarjumaExpanded,
                        onTap: () => setState(
                          () => _tarjumaExpanded = !_tarjumaExpanded,
                        ),
                      ),
                      _buildExpandableCard(
                        title: 'قراءت',
                        icon: Icons.volume_up,
                        color: Colors.purple,
                        content:
                            'قراءۃ کے قواعد:\n\n10 مشہور قاری:\n1. مشاری راشد\n2. سعد الغامدی\n3. عبد الباسط\n4. منشاوی\n5. سدھیس\n\nسننے کا طریقہ:\n✅ روزانہ 1 پارہ\n✅ سست آواز میں\n✅ تکرار کریں\n✅ اپنی ریکارڈنگ\n✅ استاد سے سنوائیں',
                        isExpanded: _qiraatExpanded,
                        onTap: () =>
                            setState(() => _qiraatExpanded = !_qiraatExpanded),
                      ),
                      _buildExpandableCard(
                        title: 'عربی',
                        icon: Icons.translate,
                        color: Colors.orange,
                        content:
                            'عربی گرامر:\n\nحروف:\n• اسم\n• فعل\n• حرف\n\nاعراب:\n• ضمہ = ُ\n• کسرہ = ِ\n• فتہ = َ\n• سکون = ْ\n\nافعال:\nماضی = کَتَبَ\nمضارع = یَکْتُبُ\n\nمطالعہ: نصاب صرفی + صرف رحمانی',
                        isExpanded: _arabicExpanded,
                        onTap: () =>
                            setState(() => _arabicExpanded = !_arabicExpanded),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
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
