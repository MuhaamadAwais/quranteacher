import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/contenttopconti.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/publishcontent.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/topcontentwidget.dart';

class Addhadiescontentpage extends StatefulWidget {
  const Addhadiescontentpage({super.key});

  @override
  State<Addhadiescontentpage> createState() => _AddhadiescontentpageState();
}

class _AddhadiescontentpageState extends State<Addhadiescontentpage> {
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

                "ADD Hadith",
                "Share prophetic traditions",
                Icons.book_outlined,
                () {
                  Navigator.of(context).pop();
                },
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.title_outlined,
                titlefield: "Hadith Title",
                heighttextfield: height * 0.1,
                hintfield: 'e.g., The Importance of Prayyer',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.bookmark_outline,
                titlefield: "Hadith Collection",
                heighttextfield: height * 0.1,
                hintfield: 'Select collection',
              iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
             
               ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.numbers_outlined,
                titlefield: "Hadith Number",
                heighttextfield: height * 0.1,
                hintfield: 'e.g., Books,Hadiths 8',
             iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
             
               ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.3,
                iconfields: Icons.description_outlined,
                titlefield: "Arabic Text",
                heighttextfield: height * 0.2,
                hintfield: '... Enter Arabic text',
             iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
             
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.description_outlined,
                titlefield: "Categor/Theme",
                heighttextfield: height * 0.1,
                hintfield: 'select category',
             iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
             
              ),

              Publishcontent(
                iconconti: Icons.check_circle_outline_outlined,
                publisname: "Publish Hadith",
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
