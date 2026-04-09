import 'package:flutter/material.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/backcontireview.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/performanceinsights.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/reviewmainconti.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/selectposition.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/textreiview.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/twoconti.dart';
import 'package:quranteacher/teacher/review_rating_feature/presentation/widgets/viewcard.dart';

class ReviewRating extends StatefulWidget {
  const ReviewRating({super.key});

  @override
  State<ReviewRating> createState() => _ReviewRatingState();
}

class _ReviewRatingState extends State<ReviewRating> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Backcontireview(),
                  Positioned(
                    top: 20,
                    left: 20,
                    right: 20,
                    child: Textreiview(),
                  ),
                  Positioned(
                    top: 90,
                    left: 20,
                    right: 20,
                    child: Reviewmainconti(),
                  ),

                  Positioned(top: 260, left: 20, right: 20, child: Twoconti()),
                ],
              ),
              SizedBox(height: 10),
              Selectposition(),
              SizedBox(height: 10),
              Viewcard(),
              SizedBox(height: 10),
              Performanceinsights(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
