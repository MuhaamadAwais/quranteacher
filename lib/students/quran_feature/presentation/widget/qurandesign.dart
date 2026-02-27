import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/quran_feature/presentation/pages/quranapimodel.dart';


class Qurandesign extends StatelessWidget {
  const Qurandesign({super.key, required this.quranapimodel});
  final Quranapimodel quranapimodel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: height * 0.18,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
            color: AppColors.textWhite,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              /// 🔵 Circle Icon
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.backgroundStart,
                ),
                child: Center(
                  child: Text(
                    quranapimodel.surahNo.toString(),
                    style: TextStyle(
                      color: AppColors.textWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 16),

              /// 📖 Middle Content
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// Title Row
                    Row(
                      children: [
                        Text(
                          quranapimodel.engName,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Spacer(),
                        Text(
                          quranapimodel.urduName,
                          style: TextStyle(
                            color: AppColors.backgroundStart,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 4),

                    /// Subtitle
                    Text(
                      "${quranapimodel.WhichCity} • ${quranapimodel.totalVerses} Verses",
                      style: TextStyle(color: Colors.grey[600]),
                    ),

                    const SizedBox(height: 8),

                    /// Progress Row
                    Row(
                      children: [
                        Expanded(
                          child: LinearProgressIndicator(
                            value: 0.70,
                            color: AppColors.backgroundStart,
                            backgroundColor: AppColors.switchBackground,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          "${quranapimodel.Complete}%",
                          style: TextStyle(
                            color: AppColors.backgroundStart,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(width: 10),

              /// ➡ Arrow
              Icon(
                Icons.arrow_forward_ios,
                size: 18,
                color: AppColors.switchBackground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
