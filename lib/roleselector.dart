import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';

class Roleselector extends StatefulWidget {
  const Roleselector({super.key});

  @override
  State<Roleselector> createState() => _RoleselectorState();
}

class _RoleselectorState extends State<Roleselector> {
  bool isstudentpressed = false;
  bool isteacherpressed = false;
  bool isadminpressed = false;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: height * 0.05),
                Text(
                  "Select Your Role",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                SizedBox(height: height * 0.02),
                Text(
                  "Choose how you want to continue",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                  ),
                ),

                SizedBox(height: height * 0.04),
                SizedBox(
                  height: height * 0.16,
                  width: width * 0.96,
                  child: GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isstudentpressed = true;
                      });
                    },
                    onTapUp: (details) {
                      setState(() {
                        isstudentpressed = false;
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        isstudentpressed = false;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      transform: Matrix4.translationValues(
                        0,
                        isstudentpressed ? -12 : 0,
                        0,
                      ),
                      child: Card(
                        color: AppColors.islamicEmerald,
                        elevation: isstudentpressed ? 18 : 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              // Icon Container with its own animation
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isstudentpressed
                                      ? -6
                                      : 0, // Thoda sa lift icon container ko
                                  0,
                                ),
                                child: Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    color: AppColors.backgroundStart,
                                  ),
                                  child: const Icon(
                                    Icons.school,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                ),
                              ),

                              const SizedBox(width: 15),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Student",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Learn Quran with expert teacher",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              // Arrow Icon with its own animation
                              AnimatedContainer(
                                duration: const Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isstudentpressed
                                      ? -6
                                      : 0, // Thoda sa lift arrow icon ko
                                  0,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // teacher
                SizedBox(height: height * 0.02),
                SizedBox(
                  height: height * 0.16,
                  width: width * 0.96,
                  child: GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isteacherpressed = true;
                      });
                    },
                    onTap: () {
                      setState(() {
                        isteacherpressed = false;
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        isteacherpressed = false;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      transform: Matrix4.translationValues(
                        0,
                        isteacherpressed ? -12 : 0,
                        0,
                      ),
                      child: Card(
                        color: AppColors.islamicNavy500,

                        elevation: isteacherpressed ? 18 : 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              // 🔹 Icon Box
                              AnimatedContainer(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColors.islamicNavy700,
                                ),
                                duration: Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isteacherpressed ? -6 : 0,
                                  0,
                                ),
                                child: const Icon(
                                  Icons.supervisor_account,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),

                              const SizedBox(width: 15),

                              // 🔹 Text Section
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Teacher",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Teach and inspire students",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              AnimatedContainer(
                                duration: Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isteacherpressed ? -6 : 0,
                                  0,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // admin
                SizedBox(height: height * 0.02),
                SizedBox(
                  height: height * 0.16,
                  width: width * 0.96,
                  child: GestureDetector(
                    onTapDown: (details) {
                      setState(() {
                        isadminpressed = true;
                      });
                    },
                    onTap: () {
                      setState(() {
                        isadminpressed = false;
                      });
                    },
                    onTapCancel: () {
                      setState(() {
                        isadminpressed = false;
                      });
                    },

                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 150),
                      transform: Matrix4.translationValues(
                        0,
                        isadminpressed ? -12 : 0,
                        0,
                      ),
                      child: Card(
                        color: AppColors.pink500,
                        elevation: isadminpressed ? 18 : 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              // 🔹 Icon Box
                              AnimatedContainer(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: AppColors.pink700,
                                ),
                                duration: Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isadminpressed ? -6 : 0,
                                  0,
                                ),
                                child: const Icon(
                                  Icons.admin_panel_settings_outlined,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),

                              const SizedBox(width: 15),

                              // 🔹 Text Section
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      "Admin",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      "Manage platform and users",
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              AnimatedContainer(
                                duration: Duration(milliseconds: 150),
                                transform: Matrix4.translationValues(
                                  0,
                                  isadminpressed ? -6 : 0,
                                  0,
                                ),
                                child: const Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                  size: 18,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.16),
                GestureDetector(
                  onTap: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => Login()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back, color: AppColors.backgroundStart),
                      Text(
                        "Back to Login",
                        style: TextStyle(
                          color: AppColors.backgroundStart,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
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
    );
  }
}
