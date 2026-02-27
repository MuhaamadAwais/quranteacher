import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                SizedBox(height: height * 0.08),
                Container(
                  height: height * 0.1,
                  width: height * 0.1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.backgroundStart,
                  ),
                  child: Icon(Icons.menu_book),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Create Account",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                SizedBox(height: height * 0.01),
                Text(
                  "join our learning community",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: height * 0.02),
                Card(
                  elevation: 8,
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.6,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.textWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Full Name"),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: AppColors.switchBackground,
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.account_circle),
                                  hint: Text("John Doe"),
                                ),
                              ),
                            ),
                          ),

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

                          Text("Confirm Password"),
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
                              Checkbox(value: false, onChanged: (value) {}),

                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "I agree to the ",
                                      style: TextStyle(
                                        color: AppColors.switchBackground,
                                      ),
                                    ),

                                    TextSpan(
                                      text: "Terms of Service ",
                                      style: TextStyle(
                                        color: AppColors.backgroundStart,
                                      ),
                                    ),

                                    TextSpan(
                                      text: " and ",
                                      style: TextStyle(
                                        color: AppColors.switchBackground,
                                      ),
                                    ),

                                    TextSpan(
                                      text: "\n Privacy policy ",
                                      style: TextStyle(
                                        color: AppColors.backgroundStart,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
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
                              ),

                              child: Center(
                                child: Text(
                                  "Create Account",
                                  style: TextStyle(
                                    color: AppColors.textWhite,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),

                Padding(
                  padding: const EdgeInsets.only(left: 70),
                  child: Row(
                    children: [
                      Text("Already have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Login()),
                          );
                        },
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            " Login",
                            style: TextStyle(
                              color: AppColors.islamicNavy,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.04),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
