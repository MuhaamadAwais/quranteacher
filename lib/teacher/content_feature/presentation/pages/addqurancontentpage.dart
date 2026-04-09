import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/contenttopconti.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/publishcontent.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/topcontentwidget.dart';

class Addqurancontentpage extends StatefulWidget {
  const Addqurancontentpage({super.key});

  @override
  State<Addqurancontentpage> createState() => _AddqurancontentpageState();
}

class _AddqurancontentpageState extends State<Addqurancontentpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              contnenttopConti(
                width,
                height * 0.25,
                AppColors.topmaingreen,
                AppColors.bottommaingreen,
                "ADD Quran Content",
                "Share Quranic Knowledge",
                Icons.home_outlined,
                () {
                  Navigator.of(context).pop();
                },
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.title_outlined,
                titlefield: "Surah/Topic Title",
                heighttextfield: height * 0.09,
                hintfield: 'e.g., Surah Al-Fatihal',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.description_outlined,
                titlefield: "Content Type",
                heighttextfield: height * 0.09,
                hintfield: 'Tajweed Rules',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.3,
                iconfields: Icons.description_outlined,
                titlefield: "Description",
                heighttextfield: height * 0.18,
                hintfield: 'Describe the content...',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.3,
                iconfields: Icons.photo_camera_back,
                titlefield: "Upload Videos",
                heighttextfield: height * 0.18,
                hintfield: 'Click to upload or drag and drop ',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.3,
                iconfields: Icons.description_outlined,
                titlefield: "Arabic Text",
                heighttextfield: height * 0.18,
                hintfield: '... Enter Arabic text',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              Publishcontent(
                iconconti: Icons.check_circle_outline_outlined,
                publisname: "Publish Quran Content",
                startconticolor: AppColors.toplast,
                endconticolor: AppColors.toplast,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
