import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/widgets/forgotpass.dart';
import 'package:quranteacher/login.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class Forgotpasswordpage extends StatefulWidget {
  final String role;
  const Forgotpasswordpage({super.key, required this.role});

  @override
  State<Forgotpasswordpage> createState() => _ForgotpasswordpageState();
}

class _ForgotpasswordpageState extends State<Forgotpasswordpage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            children: [
              SizedBox(height: 0),
              // GestureDetector(
              //   onTap: () {
              //     Navigator.of(context).push(
              //       MaterialPageRoute(
              //         builder: (context) => Login(role: ""),
              //       ),
              //     );
              //   },
              //   child: Row(
              //     children: [
              //       Icon(Icons.arrow_back, color: Colors.black,size: 24,),
              //       Text(
              //         "Back to Login",
              //         style: TextStyle(fontSize: 18, color: Colors.black),
              //       ),
              //     ],
              //   ),
              // ),
              TopcommonContainer(
                title: "Back to Login",
                heights: height * 0.15,
              ),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width * 0.25,
                    height: 15,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.toplast,
                    ),
                  ),
                  Container(
                    width: width * 0.25,
                    height: height * 0.02,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.switchBackground,
                    ),
                  ),

                  Container(
                    width: width * 0.25,
                    height: height * 0.02,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColors.switchBackground,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Forgotpass(role: widget.role),

              SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Remember your password?"),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Login(role: ""),
                        ),
                      );
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: AppColors.toplast, fontSize: 18),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
