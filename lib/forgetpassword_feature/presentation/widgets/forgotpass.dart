import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/verificationpage.dart';
import 'package:quranteacher/newcolors.dart';

class Forgotpass extends StatelessWidget {
  final String role;
  const Forgotpass({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 10,
      color: const Color.fromARGB(255, 200, 230, 201),
      child: Container(
        width: width * 0.88,
        height: height * 0.6,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color: AppColors.greenDark,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height * 0.05),
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.toplast.withOpacity(0.25),
              ),
              child: Center(
                child: Icon(
                  size: 24,
                  Icons.lock_outline,
                  color: AppColors.toplast,
                ),
              ),
            ),

            SizedBox(height: 14),
            Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Don't worry! Enter your email address ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            Text(
              "and  we'll send you a code to reset ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),

            Text(
              "your password. ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),

            // email write
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Email Address",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.topmaingreen,
                      border: Border.all(
                        width: 1.5,
                        color: AppColors.switchBackground,
                      ),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            color: AppColors.textGreen,
                            size: 28,
                          ),

                          hintText: "your.email@example.com",

                          filled: true,
                          fillColor: Colors.white,

                          contentPadding: EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 16,
                          ),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none,
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: AppColors.toplast,
                              width: 2,
                            ),
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: Colors.grey.shade300,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // send code
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => Verificationpage(role: role),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  width: width * 0.7,
                  height: height * 0.06,
                  decoration: BoxDecoration(
                    color: AppColors.bottommaingreen,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
