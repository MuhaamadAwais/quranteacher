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
                  Icon(Icons.volunteer_activism, color: Colors.white),
                  "Faith",
                  "True Belief",
                  width * 0.43,
                  height * 0.2,
                  AppColors.toplast,
                  AppColors.bottomlast,
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
                  Icon(Icons.mosque, color: Colors.white),
                  "Prayer",
                  "Salah Guide",
                  width * 0.43,
                  height * 0.2,
                  AppColors.toplast,
                  AppColors.bottomlast,
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
                Icon(Icons.monetization_on, color: Colors.white),
                "Charity",
                "Give Charity",
                width * 0.43,
                height * 0.2,
                AppColors.toplast,
                AppColors.bottomlast,
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
                Icon(Icons.handshake, color: Colors.white),
                "Manners",
                "Islamic Etiquette",
                width * 0.43,
                height * 0.2,
                AppColors.toplast,
                AppColors.bottomlast,
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
                Icon(Icons.family_restroom, color: Colors.white),
                "Family",
                "Learn Family Life",
                width * 0.43,
                height * 0.2,
                AppColors.toplast,
                AppColors.bottomlast,
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
                Icon(Icons.psychology, color: Colors.white),
                "Knowledge",
                "Islamic Knowledge",
                width * 0.43,
                height * 0.2,
                AppColors.toplast,
                AppColors.bottomlast,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget Popularconti(
    Icon icon,
    String name,
    String subtitle,
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
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),

          bottomRight: Radius.circular(35),
        ),
        border: Border.all(color: AppColors.glowCircle, width: 4.5),
      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 12),
              child: Container(
                height: height * 0.33,
                width: width * 0.33,
                decoration: BoxDecoration(
                  gradient: AppColors.backgroundgradient,
                  shape: BoxShape.circle,
                ),
                child: icon,
              ),
            ),
            SizedBox(height: 7),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                name,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
            SizedBox(height: 1),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
