import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Adminoperationwid extends StatelessWidget {
  const Adminoperationwid({
    super.key,
    required this.opacityanim,
    required this.maincontainer,
  });
  final Animation<double> opacityanim;
  final Animation<double> maincontainer;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return ScaleTransition(
      scale: maincontainer,
      child: FadeTransition(
        opacity: maincontainer,
        child: Container(
          width: width,
          height: height * 0.14,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            color: AppColors.textWhite.withOpacity(0.25),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: AppColors.textWhite, width: 2),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: AppColors.textWhite.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Icon(Icons.show_chart, color: Colors.white),
                  ),
                  const SizedBox(width: 12),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PLATFORM STATUS",
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "All Systems Operational",
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              FadeTransition(
                opacity: opacityanim,
                child: Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.islamicGreen,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
