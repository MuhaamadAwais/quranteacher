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
        height: height * 0.65,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          elevation: 5,
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
                          fontSize: 18,
                        ),
                      ),
                      Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.textWhite,
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          // Export action
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize
                              .min, // Button size content ke hisab se
                          children: [
                            Icon(
                              Icons.logout_outlined,
                              color: AppColors.toplast,
                              size: 24,
                            ),
                            SizedBox(width: 8), // Icon aur Text ke beech space
                            Text(
                              "Export",
                              style: TextStyle(
                                color: AppColors.toplast,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: ListView(
                    shrinkWrap: false,
                    children: [
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),

                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                      transactiondesign(
                        width,
                        height * 0.11,
                        1,
                        'fed 15,2025',
                        650,
                      ),
                    ],
                  ),
                ),
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
          color: AppColors.toplast.withOpacity(0.25),
          border: Border.all(color: AppColors.toplast, width: 2),
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
                    colors: [AppColors.topmiddle, AppColors.bottommiddle],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Icon(
                  Icons.attach_money,
                  size: 24,
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
                    "Classes Payment -",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
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
                    style: TextStyle(color: Colors.black, fontSize: 14),
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
                    "\$$amount",
                    style: TextStyle(
                      color: AppColors.toplast,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Text(
                    "Completed",
                    style: TextStyle(color: Colors.black, fontSize: 14),
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
