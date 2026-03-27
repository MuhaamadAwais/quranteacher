import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Growthchart extends StatelessWidget {
  const Growthchart({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.4,
        child: Card(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.textWhite,
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "User Growth",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.trending_up, color: AppColors.startgreen),
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Jan",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "Feb",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "Mar",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "Apr",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "May",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      Text(
                        "Jun",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Total growth",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        TextSpan(
                          text: " + 114%",
                          style: TextStyle(
                            color: AppColors.backgroundStart,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " over six months",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
