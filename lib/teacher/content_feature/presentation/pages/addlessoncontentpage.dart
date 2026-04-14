import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/contenttopconti.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/publishcontent.dart';
import 'package:quranteacher/teacher/content_feature/presentation/widgets/topcontentwidget.dart';

class Addlessoncontentpage extends StatefulWidget {
  const Addlessoncontentpage({super.key});

  @override
  State<Addlessoncontentpage> createState() => _AddlessoncontentpageState();
}

class _AddlessoncontentpageState extends State<Addlessoncontentpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              contnenttopConti(
                width,
                height * 0.25,
                AppColors.topmaingreen,
                AppColors.bottommaingreen,
                "ADD Lesson",
                "Create education COntent",
                Icons.school_outlined,
                () {
                  Navigator.of(context).pop();
                },
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.title_outlined,
                titlefield: "Lesson Title",
                heighttextfield: height * 0.09,
                hintfield: 'e.g., How to perform Wudu',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.description_outlined,
                titlefield: "Lesson Category",
                heighttextfield: height * 0.09,

                hintfield: 'Select category',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.sync_problem,
                titlefield: "Difficultyy Level",
                heighttextfield: height * 0.09,
                hintfield: 'Select level',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.access_time,
                titlefield: "Lesson Duration",
                heighttextfield: height * 0.09,
                hintfield: 'e.g., 30',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.3,
                iconfields: Icons.description_outlined,
                titlefield: "Lesson Description",
                heighttextfield: height * 0.18,
                hintfield: 'Description What Students will learns',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              TopicContentWidget(
                widthfield: width,
                heightfield: height * 0.2,
                iconfields: Icons.description_outlined,
                titlefield: "Additional Resources/Notes",
                heighttextfield: height * 0.09,
                hintfield: 'Add links,references notes...',
                iconsColor: AppColors.toplast,
                contclickcolor: AppColors.toplast,
              ),

              Publishcontent(
                iconconti: Icons.check_circle_outline_outlined,
                publisname: "Publish Lesson",
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
