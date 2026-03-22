import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quranteacher/admin/bottomnavigationadmin.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/register.dart';
import 'package:quranteacher/students/appanimations.dart';
import 'package:quranteacher/students/bottomnavi.dart';
import 'package:quranteacher/students/studentdetailform.dart';
import 'package:quranteacher/teacher/bottomnaviteacher.dart';

class Login extends StatefulWidget {
  final String role;
  const Login({super.key, required this.role});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> loginAnimation;
  late Animation<Offset> scale;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    final anicontroller = AppAnimations(_controller);
    loginAnimation = anicontroller.simplefade(
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
    return Scaffold(
      body: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.backgroundStart,
                AppColors.backgroundVia,
                AppColors.backgroundEnd,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Container(
                  height: height * 0.12,
                  width: height * 0.12,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.backgroundVia,
                        AppColors.islamicNavy200,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/iconapp.png"),
                  ),
                ),
                SizedBox(height: height * 0.02),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                // SizedBox(height: height * 0.02),
                Text(
                  "Sign in to continue learning",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: height * 0.03),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (context, child) {
                    return ScaleTransition(scale: loginAnimation, child: child);
                  },
                  child: Container(
                    width: width * 0.9,
                    height: height * 0.62,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.backgroundEnd,
                          AppColors.backgroundStart,
                          AppColors.backgroundVia,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          blurRadius: 1,
                          spreadRadius: 1,
                          offset: Offset(0, 0),
                        ),
                      ],
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
                              "Email Address",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * 0.08,
                              width: width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.textWhite,
                              ),
                              child: Center(
                                child: TextField(
                                  // autofocus: true,
                                  keyboardType: TextInputType.emailAddress,
                                  keyboardAppearance: Brightness.light,
                                  decoration: InputDecoration(
                                    border: InputBorder.none,

                                    prefixIcon: Icon(Icons.email),
                                    hint: Text("your.email@example.com"),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(height: height * 0.01),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "password",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * 0.08,
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
                              Checkbox(
                                value: false,
                                onChanged: (value) {
                                  value = true;
                                },
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Spacer(),
                              Text(
                                "Forget Password?",
                                style: TextStyle(
                                  color: AppColors.destructive,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),

                          GestureDetector(
                            onTap: () {
                              if (widget.role == "student") {
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
                                    builder: (context) => Bottomnaviteacher(),
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
                              height: height * 0.07,
                              width: width,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color.fromARGB(
                                      255,
                                      5,
                                      121,
                                      150,
                                    ), // emerald-600
                                    Color.fromARGB(
                                      255,
                                      16,
                                      185,
                                      182,
                                    ), // emerald-500
                                    Color.fromARGB(255, 13, 105, 148),
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
                          SizedBox(height: height * 0.02),
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
                          SizedBox(height: height * 0.01),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: height * 0.07,
                                width: width * 0.35,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.islamicNavy200,
                                      AppColors.inputBackground,
                                    ],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: width * 0.02),
                                    CircleAvatar(
                                      radius: 22,
                                      backgroundColor: Colors.transparent,
                                      child: Image(
                                        image: AssetImage(
                                          "assets/images/googl.png",
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    SizedBox(width: width * 0.0),

                                    Text(
                                      "Google  ",
                                      style: TextStyle(
                                        color: AppColors.islamicNavy,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account?",
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),

                      TextSpan(
                        text: " register now",
                        style: TextStyle(
                          color: AppColors.islamicNavy700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) =>
                                    Register(role: widget.role),
                              ),
                            );
                          },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height * 0.05),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
