import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Preferencessetting extends StatelessWidget {
  const Preferencessetting({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.37,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                            Icons.language,
                            color: AppColors.textWhite,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Preferences",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),

                  // push notifiaction
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Push Notifications",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Receive class reminders",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Switch(value: true, onChanged: (value) {}),
                      ),
                    ],
                  ),
                  // email alert
                  Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Icon(Icons.email_outlined, color: Colors.black),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Alerts",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              "Get updates via email",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Expanded(
                        flex: 2,
                        child: Switch(value: true, onChanged: (value) {}),
                      ),
                    ],
                  ),
                  Text(
                    "Preferred Language",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    width: width,
                    height: height * 0.08,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.switchBackground.withOpacity(0.25),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.language,
                            color: AppColors.switchBackground,
                            size: 24,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Text(
                            "English",
                            style: TextStyle(color: Colors.black,fontSize: 16),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: AppColors.switchBackground,
                          ),
                        ),
                      ],
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
