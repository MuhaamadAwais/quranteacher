import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Approvalstatisticswid extends StatelessWidget {
  const Approvalstatisticswid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.startgreen.withOpacity(0.25),
          border: Border.all(color: AppColors.startgreen, width: 2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 10),
              child: Row(
                children: [
                  Icon(Icons.group_outlined, color: AppColors.startgreen),
                  SizedBox(width: 10),
                  Text(
                    "Approval Statistics",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        "86",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),

                      Text(
                        "Approved",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        "3",
                        style: TextStyle(
                          color: AppColors.destructive,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),

                      Text(
                        "Pending",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          color: AppColors.destructive,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),

                      Text(
                        "Rejected",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 10,
                        ),
                      ),
                    ],
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
