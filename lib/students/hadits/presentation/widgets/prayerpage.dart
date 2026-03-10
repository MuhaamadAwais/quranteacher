import 'package:flutter/material.dart';

class PrayerPage extends StatefulWidget {
  const PrayerPage({super.key});

  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage>
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text('Prayer', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[400],
      ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
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
                  child: const Text(
                    'Quran Say About Prayer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                const SizedBox(height: 15),

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
                            'سورۃ البقرہ (2:43)',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'وَأَقِيمُوا الصَّلَاةَ وَآتُوا الزَّكَاةَ وَارْكَعُوا مَعَ الرَّاكِعِينَ',
                            style: TextStyle(fontSize: 18),
                          ),
                          const Text(
                            'نماز قائم کرو اور زکوٰۃ دو اور رکوع کرنے والوں کے ساتھ رکوع کرو۔',
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 3. Obligations Title (700ms)
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
                    'Obligations of prayer',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),

                // 🔥 4. Prayer Times (Staggered 850ms+)
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
                    child: prayercontainer(
                      ["Fajir", "Zohor", "Asar", "Magrib", "Isha"][index],
                      ["فجر", "ظہر", "عصر", "مغرب", "عشاء"][index],
                    ),
                  ),
                ),

                // 🔥 5. Qibla Card (1350ms)
                TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 1350),
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
                  child: SizedBox(
                    height: height * 0.01,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Container(
                        height: height * 0.23,
                        width: width * 0.85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white12,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.01),
                            Align(
                              alignment: Alignment.center,
                              child: const Text(
                                "قبلہ کی سمت معلوم کرنے کا طریقہ",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue,
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ),
                            SizedBox(height: height * 0.01),
                            const Text(
                              "مقام (لوکیشن) کی رسائی کی اجازت دیں\n"
                              " اپنا فون سیدھا پکڑیں\n"
                              " اسکرین پر تیر کی نشاندہی پر عمل کریں\n"
                              " جب تیر سیدھا ہو جائے تو آپ قبلہ کی طرف ہیں\n"
                              "اب آپ نماز پڑھ سکتے ہیں",
                              style: TextStyle(fontSize: 16),
                              textAlign: TextAlign.right,
                            ),
                          ],
                        ),
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
}

Widget prayercontainer(String engtext, String urdutext) {
  return GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 1,
    childAspectRatio: 5,
    padding: const EdgeInsets.all(10),
    children: [
      Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: ListTile(
          hoverColor: Colors.lightGreen,
          title: Text(engtext, style: const TextStyle(fontSize: 20)),
          trailing: Text(urdutext, style: const TextStyle(fontSize: 20)),
        ),
      ),
    ],
  );
}
