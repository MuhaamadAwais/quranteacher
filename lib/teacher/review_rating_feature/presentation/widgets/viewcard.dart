import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

class Viewcard extends StatefulWidget {
  const Viewcard({super.key});

  @override
  State<Viewcard> createState() => _ViewcardState();
}

class _ViewcardState extends State<Viewcard> {
  int selectindex = -1;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        cardreviewdesign(
          0,
          width,
          height * 0.35,
          "Ahmad Hassan",
          2,
          "Tajweed Basics",
          "Mashallah  huhfuf udhfuidfi ifidfidf ifdofidf kdfofdof fdofoef ofdofd odfof ofidefi odsodso odfodjfn nosfodf",
        ),

        cardreviewdesign(
          1,
          width,
          height * 0.35,
          "Ahmad Hassan",
          2,
          "Tajweed Basics",
          "Mashallah  huhfuf udhfuidfi ifidfidf ifdofidf kdfofdof fdofoef ofdofd odfof ofidefi odsodso odfodjfn nosfodf",
        ),

        cardreviewdesign(
          2,
          width,
          height * 0.35,
          "Ahmad Hassan",
          2,
          "Tajweed Basics",
          "Mashallah  huhfuf udhfuidfi ifidfidf ifdofidf kdfofdof fdofoef ofdofd odfof ofidefi odsodso odfodjfn nosfodf",
        ),

        cardreviewdesign(
          3,
          width,
          height * 0.35,
          "Ahmad Hassan",
          2,
          "Tajweed Basics",
          "Mashallah  huhfuf udhfuidfi ifidfidf ifdofidf kdfofdof fdofoef ofdofd odfof ofidefi odsodso odfodjfn nosfodf",
        ),
      ],
    );
  }

  Widget cardreviewdesign(
    int index,
    double width,
    double height,
    String name,
    int afterday,
    String studiessubect,
    String decribe,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: width,
        height: height,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectindex = index;
            });
          },
          child: Card(
            elevation: selectindex == index ? 10 : 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  /// Top Section
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      /// Profile Icon
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.islamicNavy500.withOpacity(
                          0.25,
                        ),
                        child: Icon(
                          Icons.person,
                          color: AppColors.islamicNavy500,
                        ),
                      ),

                      SizedBox(width: 12),

                      /// Name + Time + Subject
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              "$afterday day${afterday > 1 ? "s" : ""} ago",
                              style: TextStyle(
                                color: AppColors.switchBackground,
                                fontSize: 14,
                              ),
                            ),

                            SizedBox(height: 5),

                            Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.islamicNavy500.withOpacity(
                                  0.25,
                                ),
                              ),
                              child: Text(
                                studiessubect,
                                style: TextStyle(
                                  color: AppColors.islamicNavy500,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      /// Stars
                      Row(
                        children: List.generate(
                          5,
                          (index) =>
                              Icon(Icons.star, color: Colors.amber, size: 18),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 10),

                  /// Description
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      decribe,
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),

                  SizedBox(height: 10),

                  Divider(thickness: 1.5, color: AppColors.switchBackground),

                  /// Bottom Buttons
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: AppColors.switchBackground,
                        size: 20,
                      ),

                      SizedBox(width: 6),

                      Text(
                        "Helpful (8)",
                        style: TextStyle(color: AppColors.switchBackground),
                      ),

                      Spacer(),

                      Text(
                        "Reply",
                        style: TextStyle(color: AppColors.switchBackground),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
