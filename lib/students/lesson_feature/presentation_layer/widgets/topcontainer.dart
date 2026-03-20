import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/bottomnavi.dart';

class Topcontainer extends StatelessWidget {
  const Topcontainer({super.key, required this.size});
  final Size size;

  @override
  Widget build(BuildContext context) {
    final height = size.height;
    final width = size.width;
    return Container(
      height: height * 0.2,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF006633), const Color(0xCC054632)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: height * 0.05),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Hero(
                  tag: 'back_button',
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Bottomnavi(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.05),
                Text(
                  "Islamic Lessons",
                  style: TextStyle(
                    color: AppColors.textWhite,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.01),
          Center(
            child: Text(
              "Expand your islamic knowlege",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
