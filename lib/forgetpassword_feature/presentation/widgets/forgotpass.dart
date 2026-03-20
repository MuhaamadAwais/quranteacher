import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/verificationpage.dart';

class Forgotpass extends StatelessWidget {
  const Forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      child: Container(
        width: width,
        height: height * 0.8,
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
                color: AppColors.backgroundStart.withOpacity(0.25),
              ),
              child: Center(
                child: Icon(size: 45, Icons.lock_outline, color: Colors.green),
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Forgot Password ?",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 20),
            Text(
              "Don't worry! Enter your email address ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),
            Text(
              "and  we'll send you a code to reset ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),

            Text(
              "your password. ",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 19,
              ),
            ),

            // email write
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.switchBackground.withOpacity(0.25),
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
                            color: AppColors.switchBackground,
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
                              color: AppColors.backgroundStart,
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
                    MaterialPageRoute(builder: (context) => Verificationpage()),
                    (route) => false,
                  );
                },
                child: Container(
                  width: width,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: AppColors.backgroundEnd,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                        color: AppColors.textWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
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
