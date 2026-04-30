import 'package:flutter/material.dart';
import 'package:quranteacher/admin/admindetailpage.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/forgotpasswordpage.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/appanimations.dart';

class Adminlogin extends StatefulWidget {
  final String role;
  const Adminlogin({super.key, required this.role});

  @override
  State<Adminlogin> createState() => _LoginState();
}

class _LoginState extends State<Adminlogin> with TickerProviderStateMixin {
  //textfiled controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late AnimationController _controller;
  late Animation<double> loginAnimation;
  late Animation<Offset> scale;
  bool isvisible = true;

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
      body: SafeArea(
        child: Center(
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColors.border,
                  const Color.fromARGB(255, 63, 142, 35),
                  // AppColors.backgroundEnd,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: height * 0.04),
                  Container(
                    height: height * 0.12,
                    width: height * 0.12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [AppColors.toplast, AppColors.toplast],
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
                      color: AppColors.textGreen,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                  SizedBox(height: height * 0.02),

                  // // SizedBox(height: height * 0.02),
                  // Text(
                  //   "Sign in to continue learning",
                  //   style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.w600,
                  //     fontSize: 20,
                  //   ),
                  // ),

                  // SizedBox(height: height * 0.03),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      return ScaleTransition(
                        scale: loginAnimation,
                        child: child,
                      );
                    },
                    child: Container(
                      width: width * 0.9,
                      height: height * 0.62,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: AppColors.icongradient,
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
                                    controller: emailController,
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
                                    controller: passwordController,
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
                                  activeColor: AppColors.startgreen,
                                  fillColor: MaterialStateProperty.all(
                                    Colors.white30,
                                  ),
                                  value: isvisible,
                                  onChanged: (value) {
                                    setState(() {
                                      isvisible = value!;
                                    });
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            Forgotpasswordpage(
                                              role: widget.role,
                                            ),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Forget Password?",
                                    style: TextStyle(
                                      color: AppColors.whitePrimary,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            GestureDetector(
                              onTap: () {
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Admindetailpage(),
                                  ),
                                  (route) => false,
                                );
                              },
                              child: Card(
                                elevation: 80,
                                shadowColor: Newcolors.green300,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Container(
                                  height: height * 0.07,
                                  width: width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    gradient: LinearGradient(
                                      colors: [
                                        AppColors.startgreen,
                                        AppColors.topmiddle,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                    ),
                                    border: Border.all(
                                      color: Colors.grey[500]!,
                                      width: 1,
                                    ),
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
                                  height: height * 0.06,
                                  width: width * 0.4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColors.textWhite,
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
                                          color: AppColors.toplast,
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

                  SizedBox(height: height * 0.04),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
