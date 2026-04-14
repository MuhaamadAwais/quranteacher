import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/childrentrainingpage.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class FamilyPage extends StatefulWidget {
  const FamilyPage({super.key});

  @override
  State<FamilyPage> createState() => _FamilyPageState();
}

class _FamilyPageState extends State<FamilyPage>
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
      // appBar: AppBar(
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   title: const Text(
      //     'Family',
      //     style: TextStyle(
      //       color: Colors.white,
      //       fontSize: 22,
      //       fontWeight: FontWeight.bold,
      //     ),
      //   ),
      //   backgroundColor: Colors.red[400],
      // ),
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN FADE (LessonScreen exact)
        child: SlideTransition(
          position: _slideAnimation, // 🔥 MAIN SLIDE (LessonScreen exact)
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TopcommonContainer(
                  title: 'Family',
                  subTitle: "Family: Love & Blessings",
                ),
                const SizedBox(height: 20),

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
                  child: const Padding(
                    padding: EdgeInsets.only(left: 25),
                    child: Text(
                      'Islam Say About Family',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGreen,
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
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Card(
                      color: Colors.green[50],
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Center(
                              child: Text(
                                'سورۃ الاسراء (17:23)',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'وَقَضَىٰ رَبُّكَ أَلَّا تَعْبُدُوا إِلَّا إِيَّاهُ وَبِالْوَالِدَيْنِ إِحْسَانًا',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'اور تیرے رب نے فیصلہ فرما دیا کہ اس کے سوا کسی کی عبادت نہ کرو اور ماں باپ کے ساتھ احسان کرو۔',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 🔥 3. Family Rights Title (700ms)
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
                      'Family rights:',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textGreen,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // 🔥 4. Family Rights List (Staggered 850ms+)
                ...List.generate(
                  6,
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
                    child: _buildFamilyRightItem(index),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFamilyRightItem(int index) {
    final items = [
      _buildFamilyRight(
        Icons.child_care,
        'اولاد کی تربیت',
        icon2: Icons.done_rounded,
      ),
      _buildFamilyRight(
        Icons.favorite,
        'بیوی کے حقوق',
        icon2: Icons.done_rounded,
      ),
      _buildFamilyRight(Icons.man, 'شوہر کے فرائض', icon2: Icons.done_rounded),
      _buildFamilyRight(
        Icons.elderly,
        'والدین کی خدمت',
        icon2: Icons.done_rounded,
      ),
      _buildFamilyRight(
        Icons.people,
        'رشتہ داروں سے رابطہ',
        icon2: Icons.done_rounded,
      ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChildrenTrainingPage(),
            ),
          );
        },
        child: _buildFamilyRight(
          Icons.child_care,
          "بچوں کی تربیت",
          icon2: Icons.arrow_forward,
        ),
      ),
    ];

    return items[index];
  }

  Widget _buildFamilyRight(IconData icon, String text, {IconData? icon2}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: SizedBox(
        width: 330,
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          tileColor: Colors.green[50],
          leading: Icon(icon, color: AppColors.greenDark),
          title: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          trailing: icon2 != null
              ? Icon(icon2, color: AppColors.greenAccent)
              : null,
        ),
      ),
    );
  }
}
