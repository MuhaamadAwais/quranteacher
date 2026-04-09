import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdetailform.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/pages/teacherdetailspage.dart';

class Sucessfullyypage extends StatefulWidget {
 final String role;
  const Sucessfullyypage({super.key,required this.role});

  @override
  State<Sucessfullyypage> createState() => _SucessfullyypageState();
}

class _SucessfullyypageState extends State<Sucessfullyypage> {
 
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 15,
                  child: Container(
                    width: width,
                    height: height * 0.95,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.textWhite,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.toplast,
                          ),
                          child: Center(
                            child: Icon(
                              size: 24,
                              Icons.check,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        SizedBox(height: 20),
                        Text(
                          "Password Reset",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        SizedBox(height: 10),
                        Text(
                          "Successful!",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                "Your password hass been successfully",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),

                              Text(
                                "reset.You can now sign in with your",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),

                              Text(
                                " new pasword",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // back login
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              if (widget.role== "student") {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => StudentDetailForm(),
                                  ),
                                  (route) => false,
                                );
                              } else if (widget.role == "teacher") {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Teacherdetailspage(),
                                  ),
                                  (route) => false,
                                );
                              } else if (widget.role == "admin") {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Bottomnavigationadmin(),
                                  ),
                                  (route) => false,
                                );
                              }
                            },
                            child: Container(
                              width: width,
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                color: AppColors.toplast,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                  "Back to Login",
                                  style: TextStyle(
                                    color: AppColors.textWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
