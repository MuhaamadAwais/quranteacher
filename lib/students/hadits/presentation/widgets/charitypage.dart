import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class CharityPage extends StatefulWidget {
  const CharityPage({super.key});
  @override
  State<CharityPage> createState() => _CharityPageState();
}

class _CharityPageState extends State<CharityPage>
    with SingleTickerProviderStateMixin {
  final TextEditingController _wealthController = TextEditingController();
  double zakatAmount = 0;

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
    _wealthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     'Charity',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 22,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: Colors.purple[400],
      // ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopcommonContainer(
                    title: ' Charity',
                    subTitle: "Charity: Blessings & Joy",
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
                    child: Center(
                      child: Text(
                        "Quran Say About Charity",
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: AppColors.islamicNavy900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),

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
                      padding: EdgeInsetsGeometry.only(
                        left: width * 0.05,
                        right: width * 0.05,
                      ),
                      child: Card(
                        color: Colors.purple[50],
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const Text(
                                'سورۃ البقرہ (2:261)',
                                style: TextStyle(
                                  color: AppColors.islamicNavy900,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'مَّثَلُ الَّذِيْنَ يُنْفِقُوْنَ اَمْوَالَهُمْ فِيْ سَبِيْلِ اللّٰهِ كَمَثَلِ حَبَّةٍ اَنْۢبَتَتْ سَبْعَ سَنَابِلَ فِيْ كُلِّ سُنْۢبُلَةٍ مِّائَةُ حَبَّةٍ ؕ وَاللّٰهُ يُضٰعِفُ لِمَنْ يَّشَآءُ ؕ وَاللّٰهُ وَاسِعٌ عَلِيْمٌ',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                ' "جو لوگ اپنے مال اللہ کی راہ میں خرچ کرتے ہیں، ان کے خرچ کی مثال اس دانے جیسی ہے جس سے سات بالیں نکلیں اور ہر بال میں سو دانے ہوں، اور اللہ جس کے لیے چاہے (اُسے) بڑھا چڑھا کر دیتا ہے، اور اللہ وسعت والا، سب کچھ جاننے والا ہے۔"',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 🔥 3. Important Notes Title (700ms)
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
                        "Important Notes:",
                        style: TextStyle(
                          color: AppColors.islamicNavy900,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 🔥 4. Notes Container (850ms)
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
                    child: Center(
                      child: Container(
                        height: height * 0.2,
                        width: width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.purple[50],
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: height * 0.02),
                            const Padding(
                              padding: EdgeInsets.only(left: 0),
                              child: Text(
                                "نصاب سے زائد دولت کا 2.5٪ حصہ۔\n        ایک قمری سال کے بعد واجب۔\n صرف بالغ اور عاقل مسلمان کے لیے۔\n    مستحق اور اہل افراد کو دیا جائے ",
                                style: TextStyle(fontSize: 17),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 🔥 5. Calculate Title (1000ms)
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
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(left: width * 0.05),
                      child: const Text(
                        'Calculate Zakat',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: AppColors.islamicNavy900,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 🔥 6. TextField + Result (1150ms+)
                  TweenAnimationBuilder<double>(
                    duration: const Duration(milliseconds: 1150),
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
                      child: Column(
                        children: [
                          TextField(
                            controller: _wealthController,
                            keyboardType: TextInputType.number,
                            enableInteractiveSelection: true,
                            decoration: const InputDecoration(
                              labelText: 'total amount (PKR)',
                              prefixIcon: Icon(Icons.currency_rupee),
                              border: OutlineInputBorder(),
                            ),
                            onChanged: (value) {
                              setState(() {
                                zakatAmount =
                                    (double.tryParse(value) ?? 0) * 0.025;
                              });
                            },
                          ),
                          const SizedBox(height: 20),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  const Text(
                                    'Your Zakat Amount',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '${zakatAmount.toStringAsFixed(0)} PKR',
                                    style: TextStyle(
                                      fontSize: 32,
                                      color: Colors.purple[400],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
