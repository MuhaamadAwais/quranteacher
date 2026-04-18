import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/appanimations.dart';

class Quranhadithcard extends StatefulWidget {
  const Quranhadithcard({super.key});

  @override
  State<Quranhadithcard> createState() => _CurrentsurahState();
}

class _CurrentsurahState extends State<Quranhadithcard>
    with SingleTickerProviderStateMixin {
  final GestureFlipCardController gestureController =
      GestureFlipCardController();
  Timer? _flipTimer;

  late AnimationController _animationController;
  late Animation<double> _simpllefade;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );
    final controller = AppAnimations(_animationController);
    _animationController.forward();
    _animationController.repeat(reverse: true);
    _simpllefade = controller.simplefade(
      begin: 0.95,
      end: 1.0,
      curve: Curves.easeInOut,
    );
    _flipTimer = Timer.periodic(Duration(seconds: 15), (timer) {
      if (mounted) {
        gestureController.flipcard();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    _flipTimer?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: SizedBox(
        height: height * 0.3,
        width: width * 0.7,
        // 🔥 GestureFlipCard - Tap to flip automatically!
        child: ScaleTransition(
          scale: _simpllefade,
          child: GestureFlipCard(
            controller: gestureController,
            enableController: true,
            axis: FlipAxis.vertical, // Left/Right flip
            animationDuration: const Duration(milliseconds: 900),

            // 🔥 FRONT: Current Surah info (original design)
            frontWidget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: AppColors.icongradient,
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(19, 251, 252, 254),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
                border: BoxBorder.fromLTRB(
                  left: BorderSide(width: 4, color: AppColors.textWhite),
                  right: BorderSide(width: 4, color: AppColors.textWhite),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(08.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: height * 0.01),
                    Text(
                      "قُلْ يَا عِبَادِيَ الَّذِينَ أَسْرَفُوا عَلَىٰ أَنفُسِهِمْ لَا تَقْنَطُوا مِن رَّحْمَةِ اللَّهِ ۚ إِنَّ اللَّهَ يَغْفِرُ الذُّنُوبَ جَمِيعًا ۚ إِنَّهُ هُوَ الْغَفُورُ الرَّحِيمُ",
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
                        "Qur'an, Surah Az-Zumar (آیت 53)",
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

            backWidget: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: AppColors.icongradient,

                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(28, 237, 233, 233),
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
                border: BoxBorder.fromLTRB(
                  left: BorderSide(width: 4, color: AppColors.textWhite),
                  right: BorderSide(width: 4, color: AppColors.textWhite),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(08.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(height: height * 0.01),
                    Text(
                      " کہہ دیجیے: اے میرے بندو جنہوں نے اپنی جانوں پر زیادتی کی ہے! اللہ کی رحمت سے ناامید نہ ہو جاؤ۔ بے شک اللہ تمام گناہوں کو بخش دیتا ہے۔ یقیناً وہی بہت بخشنے والا، نہایت رحم کرنے والا ہے۔",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        //textBaseline: TextBaseline.alphabetic,
                      ),
                    ),

                    Center(
                      child: const Text(
                        "Qur'an, Surah Az-Zumar (آیت 53)",
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
