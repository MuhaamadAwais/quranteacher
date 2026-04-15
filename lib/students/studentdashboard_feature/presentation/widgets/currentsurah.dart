import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/appanimations.dart';

class Currentsurah extends StatefulWidget {
  const Currentsurah({super.key});

  @override
  State<Currentsurah> createState() => _CurrentsurahState();
}

class _CurrentsurahState extends State<Currentsurah>
    with SingleTickerProviderStateMixin {
  final GestureFlipCardController gestureController =
      GestureFlipCardController();

  late AnimationController _animationController;
  late Animation<double> _simpllefade;
  Timer? _flipTimer;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    final controller = AppAnimations(_animationController);

    _simpllefade = controller.simplefade(
      begin: 0.9,
      end: 1.0,
      curve: Curves.easeInOut,
    );

    _animationController.forward();
    _flipTimer = Timer.periodic(Duration(seconds: 10), (timer) {
      if (mounted) {
        gestureController.flipcard();
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _flipTimer?.cancel();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: height * 0.28,
        width: width * 0.91,
        // 🔥 GestureFlipCard - Tap to flip automatically!
        child: ScaleTransition(
          scale: _simpllefade,
          child: GestureFlipCard(
            controller: gestureController,
            enableController: true,
            axis: FlipAxis.vertical, // Left/Right flip
            animationDuration: const Duration(milliseconds: 600),

            // 🔥 FRONT: Current Surah info (original design)
            frontWidget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: AppColors.startgreen,
                gradient: AppColors.icongradient,
                border: Border.all(
                  width: 4.0,
                  color: AppColors.whiteBackground,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: height * 0.01),
                    Text(
                      "  هُوَ الَّذِيْ جَعَلَ لَكُمُ الْأَرْضَ ذَلُوْلًا فَامْشُوْا فِيْ مَنَاكِبِهَا وَكُلُوْا مِنْ رِزْقِهِ ۖ وَإِلَيْهِ النُّشُوْرُ  ",
                      style: TextStyle(
                        color: Colors.white,

                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        //textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                    SizedBox(height: height * 0.01),

                    Center(
                      child: const Text(
                        "سورۃ الملک، آیت 15",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            backWidget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: AppColors.greenLight,
                gradient: AppColors.icongradient,

                border: Border.all(width: 4.0, color: AppColors.whitePrimary),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: height * 0.01),
                    Text(
                      "وہی ہے جس نے تمہارے لیے زمین کو نرم و مسخر کر دیا، سو تم اس کے راستوں میں چلو پھرو، اور اس کے (دیئے ہوئے) رزق میں سے کھاؤ، اور اسی کی طرف (مرنے کے بعد) اٹھ کر جانا ہے۔",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //textBaseline: TextBaseline.alphabetic,
                      ),
                    ),
                    SizedBox(height: height * 0.01),

                    Center(
                      child: const Text(
                        "اردو ترجمہ (مولانا فتح محمد جالندھری)",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}










// previws code of surat 

// Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: SizedBox(
//         height: height * 0.25,
//         width: width,
//         child: Card(
//           color: AppColors.islamicNavy400.withOpacity(0.65),
//           elevation: 20,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Row(
//                   children: [
//                     Icon(Icons.book),
//                     Text(
//                       "Current Surah",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                       ),
//                     ),
//                   ],
//                 ),
//                 Container(
//                   height: height * 0.1,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: AppColors.textWhite,
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: [
//                             Text("Surah Al-Mulk"),
//                             Spacer(),
//                             Text("Surah 67"),
//                           ],
//                         ),
//                         Text("Ayyah 15 of 30"),
//                         LinearProgressIndicator(
//                           color: AppColors.backgroundStart,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );