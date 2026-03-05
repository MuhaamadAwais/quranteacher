import 'package:flutter/material.dart';

class Revenuebreakout extends StatelessWidget {
  const Revenuebreakout({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.orange.withOpacity(0.25),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.monetization_on, color: Colors.orange),
                  Text(
                    "Revenue Breakdown",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    "Student Subscriptions",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "156k",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
          
              LinearProgressIndicator(
                backgroundColor: Colors.orange,
                stopIndicatorColor: Colors.white,
              ),
          
              // teacher commissions
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "Teacher Commissions",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "37k",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
          
              LinearProgressIndicator(
                backgroundColor: Colors.orange,
                stopIndicatorColor: Colors.white,
              ),
          
              // premium features
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "premium features",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    "16k",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
          
              LinearProgressIndicator(
                backgroundColor: Colors.orange,
                stopIndicatorColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
