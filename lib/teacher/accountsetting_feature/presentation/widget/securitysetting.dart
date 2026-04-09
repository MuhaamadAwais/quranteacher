import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Securitysetting extends StatelessWidget {
  const Securitysetting({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.23,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            colors: [AppColors.toplast, AppColors.toplast],
                          ),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.lock_outline,
                            color: AppColors.textWhite,
                            size: 24,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Security",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: height * 0.1,
                      width: width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.switchBackground.withOpacity(0.25),
                      ),
                      child: Center(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Icon(
                                size: 24,
                                Icons.lock_outline,
                                color: AppColors.switchBackground,
                              ),
                            ),

                            Expanded(
                              flex: 3,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Change Password",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),

                                  Text(
                                    "Last change 2 month ago",
                                    style: TextStyle(
                                      color: AppColors.switchBackground,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Icon(

size: 24,                                Icons.arrow_forward_ios,
                                color: AppColors.switchBackground,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
