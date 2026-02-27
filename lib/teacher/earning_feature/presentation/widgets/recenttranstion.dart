import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Recenttranstion extends StatelessWidget {
  const Recenttranstion({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.58,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          elevation: 10,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.textWhite,
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Recent Transactions",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.logout_outlined),
                            Text("Export"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                transactiondesign(width, height * 0.1, 1, 'fed 15,2025', 650),
                transactiondesign(width, height * 0.1, 1, 'fed 15,2025', 650),
                transactiondesign(width, height * 0.1, 1, 'fed 15,2025', 650),
                transactiondesign(width, height * 0.1, 1, 'fed 15,2025', 650),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget transactiondesign(
    double width,
    double height,
    int week,
    String date,
    int amount,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.switchBackground,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [Colors.orange, Colors.deepOrangeAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(
                  Icons.attach_money,
                  size: 30,
                  color: AppColors.textWhite,
                ),
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "CLasses Payyment -",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    "Week $week",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(color: AppColors.textWhite, fontSize: 15),
                  ),
                ],
              ),
            ),

            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    amount.toString(),
                    style: TextStyle(
                      color: AppColors.backgroundStart,
                      fontSize: 20,
                    ),
                  ),

                  Text(
                    "Completed",
                    style: TextStyle(color: AppColors.textWhite, fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
