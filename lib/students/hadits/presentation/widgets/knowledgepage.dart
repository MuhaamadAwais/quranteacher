import 'package:flutter/material.dart';

class KnowledgePage extends StatefulWidget {
  const KnowledgePage({super.key});

  @override
  State<KnowledgePage> createState() => _KnowledgePageState();
}

class _KnowledgePageState extends State<KnowledgePage> {
  bool _tajweedExpanded = false;
  bool _tafseerExpanded = false;
  bool _hifzExpanded = false;
  bool _tarjumaExpanded = false;
  bool _qiraatExpanded = false;
  bool _arabicExpanded = false;

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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Header
            Center(
              child: const Text(
                'Acquire knowledge of Quran',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Quran Ayat Card
            Card(
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

            const SizedBox(height: 30),
            const Text(
              ' Quran Studies:',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),

            // Expandable Tajweed Card
            _buildExpandableCard(
              title: 'تجوید',
              icon: Icons.record_voice_over,
              color: Colors.teal,
              content:
                  'تجوید = حروف کی صحیح ادائیگی\n\nمخارج: 17\n\nمکی مخرج:\n• حلق (گلا)\n• حلقِ اوسط\n• حلقِ ورب\n\nنکات:\n✅ مَدِّ آرڈِناری = 2 حرکات\n✅ مَدِّ لَازِم = 6 ہمیشہ\n✅ گَرْدَلَہ = R کی آواز\n✅ اضْطَرَارِی مَد = 4-5',
              isExpanded: _tajweedExpanded,
              onTap: () => setState(() => _tajweedExpanded = !_tajweedExpanded),
            ),

            // Expandable Tafseer Card
            _buildExpandableCard(
              title: 'تفسیر',
              icon: Icons.chrome_reader_mode,
              color: Colors.indigo,
              content:
                  'تفسیر = قرآن کی تشریح\n\nقسمیں:\n1. تفسیر بالماثور (صحابہ)\n2. تفسیر بالرائے (علماء)\n\nمشہور تفاسیر:\n✅ تفسیر طبری\n✅ تفسیر ابن کثیر\n✅ تفسیر قرطبی\n✅ تفسیر بہشتی زخیرہ\n\nمطالعہ: روزانہ 1 صفحہ',
              isExpanded: _tafseerExpanded,
              onTap: () => setState(() => _tafseerExpanded = !_tafseerExpanded),
            ),

            // Expandable Hifz Card
            _buildExpandableCard(
              title: 'حفظ',
              icon: Icons.bookmark,
              color: Colors.amber,
              content:
                  'قرآن حفظ کا طریقہ:\n\n1. ناظرہ = 4 بار پڑھیں\n2. مناجات = 3 بار سنائیں\n3. معاہدہ = 1 بار سنائیں\n\nپلان:\n📖 30 جزء = 20 دن\n📖 1/2 حصہ روزانہ\n\nTips:\n✅ صبح کا وقت بہترین\n✅ وضو کر کے حفظ\n✅ ترجمہ سمجھیں\n✅ تکرار ضروری',
              isExpanded: _hifzExpanded,
              onTap: () => setState(() => _hifzExpanded = !_hifzExpanded),
            ),

            // Expandable Tarjuma Card
            _buildExpandableCard(
              title: 'ترجمہ',
              icon: Icons.language,
              color: Colors.green,
              content:
                  'اردو تراجم:\n\n✅ مولانا فتح محمد جالندھری\n✅ سید ابو الاعلیٰ مودودی\n✅ طاہر القادری\n✅ مرزا تقی\n✅ نعمت اللہ اعزی\n\nاستعمال:\n1. پہلے ترجمہ پڑھیں\n2. معنی سمجھیں\n3. پھر عربی پڑھیں\n\nفائدہ: 80% قرآن سمجھ آئے گا',
              isExpanded: _tarjumaExpanded,
              onTap: () => setState(() => _tarjumaExpanded = !_tarjumaExpanded),
            ),

            // Expandable Qiraat Card
            _buildExpandableCard(
              title: 'قراءت',
              icon: Icons.volume_up,
              color: Colors.purple,
              content:
                  'قراءۃ کے قواعد:\n\n10 مشہور قاری:\n1. مشاری راشد\n2. سعد الغامدی\n3. عبد الباسط\n4. منشاوی\n5. سدھیس\n\nسننے کا طریقہ:\n✅ روزانہ 1 پارہ\n✅ سست آواز میں\n✅ تکرار کریں\n✅ اپنی ریکارڈنگ\n✅ استاد سے سنوائیں',
              isExpanded: _qiraatExpanded,
              onTap: () => setState(() => _qiraatExpanded = !_qiraatExpanded),
            ),

            // Expandable Arabic Card
            _buildExpandableCard(
              title: 'عربی',
              icon: Icons.translate,
              color: Colors.orange,
              content:
                  'عربی گرامر:\n\nحروف:\n• اسم\n• فعل\n• حرف\n\nاعراب:\n• ضمہ = ُ\n• کسرہ = ِ\n• فتہ = َ\n• سکون = ْ\n\nافعال:\nماضی = کَتَبَ\nمضارع = یَکْتُبُ\n\nمطالعہ: نصاب صرفی + صرف رحمانی',
              isExpanded: _arabicExpanded,
              onTap: () => setState(() => _arabicExpanded = !_arabicExpanded),
            ),

            const SizedBox(height: 30),

            // Action Buttons
            // ElevatedButton.icon(
            //   onPressed: () {
            //     // Audio player integration
            //     ScaffoldMessenger.of(context).showSnackBar(
            //       const SnackBar(content: Text('قرآن player کھل رہا ہے...')),
            //     );
            //   },
            //   icon: const Icon(Icons.play_arrow),
            //   label: const Text('قرآن سنیں'),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.blue[500],
            //     minimumSize: const Size(double.infinity, 50),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 15),
            // ElevatedButton.icon(
            //   onPressed: () {
            //     // Daily plan dialog
            //     showDialog(
            //       context: context,
            //       builder: (context) => AlertDialog(
            //         title: const Text('روزانہ پلان'),
            //         content: const Text(
            //           '📖 صبح: 1/2 حصہ حفظ\n📖 شام: 1 پارہ سننا\n📖 رات: ترجمہ پڑھنا',
            //         ),
            //         actions: [
            //           TextButton(
            //             onPressed: () => Navigator.pop(context),
            //             child: const Text('ٹھیک'),
            //           ),
            //         ],
            //       ),
            //     );
            //   },
            //   icon: const Icon(Icons.schedule),
            //   label: const Text('روزانہ پلان'),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.blue[500],
            //     minimumSize: const Size(double.infinity, 50),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(25),
            //     ),
            //   ),
            // ),
          ],
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
