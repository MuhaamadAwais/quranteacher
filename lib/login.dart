import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/register.dart';
import 'package:quranteacher/roleselector.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.03),
                Container(
                  height: height * 0.1,
                  width: height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.backgroundStart,
                  ),
                  child: Center(
                    child: Image.asset("assets/images/iconapp.png"),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                SizedBox(height: height * 0.02),
                Text(
                  "Sign in to continue learning",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: height * 0.02),
                Container(
                  width: width * 0.9,
                  height: height * 0.52,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.textWhite,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 15,
                        spreadRadius: 2,
                        offset: Offset(0, 6),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Email Address"),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.switchBackground,
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.email),
                                hint: Text("your.email@example.com"),
                              ),
                            ),
                          ),
                        ),

                        Text("Password"),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.switchBackground,
                          ),
                          child: Center(
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.lock_outline),
                                hint: Text("........"),
                              ),
                            ),
                          ),
                        ),

                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            Text(
                              "Remember me",
                              style: TextStyle(color: Colors.black),
                            ),
                            Spacer(),
                            Text(
                              "Forget Password?",
                              style: TextStyle(
                                color: AppColors.backgroundStart,
                              ),
                            ),
                          ],
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => Roleselector()),
                            );
                          },
                          child: Container(
                            height: height * 0.07,
                            width: width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Color(0xFF059669), // emerald-600
                                  Color(0xFF10B981), // emerald-500
                                  Color(0xFF0D9488),
                                ],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.white.withOpacity(0.4),
                                  offset: Offset(0, 6),
                                  blurRadius: 12,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),

                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  color: AppColors.textWhite,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Divider(
                                thickness: 2,
                                color: AppColors.switchBackground,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              flex: 4,
                              child: Text(
                                "Or continue with",
                                style: TextStyle(
                                  color: AppColors.switchBackground,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Divider(
                                thickness: 1,
                                color: AppColors.switchBackground,
                              ),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: height * 0.07,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.switchBackground,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Icon(Icons.ios_share),
                                  ),
                                  Expanded(flex: 5, child: Text("Google")),
                                ],
                              ),
                            ),

                            Container(
                              height: height * 0.07,
                              width: width * 0.35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: AppColors.switchBackground,
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 5,
                                    child: Icon(Icons.ios_share),
                                  ),
                                  Expanded(flex: 5, child: Text("Google")),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(color: AppColors.switchBackground),
                      ),

                      TextSpan(
                        text: " register now",
                        style: TextStyle(color: AppColors.islamicNavy),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Register(),
                              ),
                            );
                          },
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
}
