import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

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
              Popularconti(
                "assets/images/faith.png",
                "Faith",
                width * 0.43,
                height * 0.2,
                AppColors.secondary,
                AppColors.primary,
              ),

              Popularconti(
                "assets/images/prayer.png",
                "Prayer",
                width * 0.43,
                height * 0.2,
                AppColors.islamicNavy500,
                AppColors.islamicNavy600,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Popularconti(
              "assets/images/charity.png",
              "Charity",
              width * 0.43,
              height * 0.2,
              Colors.purple,
              Colors.purpleAccent,
            ),

            Popularconti(
              "assets/images/manner.png",
              "Manners",
              width * 0.43,
              height * 0.2,
              Colors.orange,
              Colors.orangeAccent,
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Popularconti(
              "assets/images/family.png",
              "Family",
              width * 0.43,
              height * 0.2,
              Colors.red,
              Colors.redAccent,
            ),

            Popularconti(
              "assets/images/knowledge.png",
              "Knowledge",
              width * 0.43,
              height * 0.2,
              Colors.blue,
              Colors.blueAccent,
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
            Image.asset(
              image,
              width: width * 0.4,
              fit: BoxFit.cover,
            ),
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
