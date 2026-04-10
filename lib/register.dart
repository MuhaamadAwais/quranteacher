import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';
import 'package:quranteacher/students/appanimations.dart';

class Register extends StatefulWidget {
  final String role;
  const Register({super.key, required this.role});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> registerAnimation;
  late Animation<Offset> scale;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    final anicontroller = AppAnimations(_controller);
    registerAnimation = anicontroller.simplefade(
      begin: 0.0,
      end: 1.0,
      curve: Curves.easeInOut,
    );

    scale = anicontroller.simpleslide(
      begin: Offset(0, 1),
      end: Offset.zero,
      curve: Curves.easeInOut,
    );

    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.topmaingreen,
                  AppColors.bottommaingreen,
                  // AppColors.backgroundEnd,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height * 0.05),
                  // SizedBox(height: height * 0.05),
                  ScaleTransition(
                    scale: registerAnimation,
                    child: Container(
                      height: height * 0.12,
                      width: height * 0.12,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.toplast,
                            AppColors.toplast
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Center(
                        child: Image.asset("assets/images/iconapp.png"),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  ScaleTransition(
                    scale: registerAnimation,
                    child: Text(
                      "Create Account",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),

                  //SizedBox(height: height * 0.01),
                  ScaleTransition(
                    scale: registerAnimation,
                    child: Text(
                      "join our learning community",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.02),
                  ScaleTransition(
                    scale: registerAnimation,
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.topmiddle.withOpacity(0.25)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height * 0.01),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Full Name",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.textWhite,
                                ),
                                child: Center(
                                  child: TextField(
                                    // autofocus: true,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(Icons.account_circle),
                                      hint: Text("John Doe"),
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Email Address",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.textWhite,
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
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Password",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.textWhite,
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
                            ),

                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Text(
                                "Confirm Password",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: height * 0.07,
                                width: width * 0.8,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: AppColors.textWhite,
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
                            ),
                            Row(
                              children: [
                                Checkbox(value: false, onChanged: (value) {}),

                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "I agree to the ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      TextSpan(
                                        text: "Terms of Service ",
                                        style: TextStyle(
                                          color: AppColors.topmiddle,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      TextSpan(
                                        text: " and ",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),

                                      TextSpan(
                                        text: "\n Privacy policy ",
                                        style: TextStyle(
                                          color: AppColors.topmiddle,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height * 0.01),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Login(role: widget.role),
                                  ),
                                );
                              },
                              child: Container(
                                height: height * 0.07,
                                width: width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                 color: AppColors.toplast
                                  ),

                                child: Center(
                                  child: Text(
                                    "Create Account",
                                    style: TextStyle(
                                      color: AppColors.textWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.015),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: height * 0.03),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => Login(role: widget.role),
                            ),
                          );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(role: widget.role),
                              ),
                            );
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                              color: AppColors.topmiddle,
                              fontWeight: FontWeight.bold,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: height * 0.06),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
