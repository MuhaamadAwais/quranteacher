import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/charitypage.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/faithpage.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/familypage.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/knowledgepage.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/mannerspage.dart';
import 'package:quranteacher/students/hadits/presentation/widgets/prayerpage.dart';

class Populartopicconti extends StatefulWidget {
  const Populartopicconti({super.key});

  @override
  State<Populartopicconti> createState() => _PopulartopiccontiState();
}

class _PopulartopiccontiState extends State<Populartopicconti> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const FaithPage()),
                  );
                },
                child: Popularconti(
                  "assets/images/faith.png",
                  "Faith",
                  width * 0.43,
                  height * 0.2,
                  AppColors.startgreen,
                  AppColors.endgreen,
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PrayerPage()),
                  );
                },
                child: Popularconti(
                  "assets/images/prayer.png",
                  "Prayer",
                  width * 0.43,
                  height * 0.2,
                  AppColors.islamicNavy600,
                  AppColors.islamicNavy800,
                ),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CharityPage()),
                );
              },
              child: Popularconti(
                "assets/images/charity.png",
                "Charity",
                width * 0.43,
                height * 0.2,
                AppColors.pink500,
                AppColors.pink700,
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MannersPage()),
                );
              },
              child: Popularconti(
                "assets/images/manner.png",
                "Manners",
                width * 0.43,
                height * 0.2,
                Colors.orangeAccent,
                Colors.orange,
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FamilyPage()),
                );
              },
              child: Popularconti(
                "assets/images/family.png",
                "Family",
                width * 0.43,
                height * 0.2,
                Colors.redAccent,
                Colors.red,
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KnowledgePage(),
                  ),
                );
              },
              child: Popularconti(
                "assets/images/knowledge.png",
                "Knowledge",
                width * 0.43,
                height * 0.2,
                Colors.blueAccent,
                Colors.blue,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget Popularconti(
    String image,
    String name,
    double width,
    double height,
    Color firstcolor,
    Color endcolor,
  ) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [firstcolor, endcolor],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image, width: width * 0.4, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                name,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
