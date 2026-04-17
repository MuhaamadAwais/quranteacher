import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/newpasswordpage.dart';

class Verificationcontiwidget extends StatelessWidget {
  final String role;
  const Verificationcontiwidget({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Card(
        elevation: 15,
        shadowColor: AppColors.greenDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: width * 0.88,
          height: height * 0.6,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 200, 230, 201),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.03),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color.fromARGB(103, 5, 150, 104),
                ),
                child: Center(
                  child: Icon(
                    size: 28,
                    Icons.admin_panel_settings_outlined,
                    color: AppColors.textWhite,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Text(
                "Verification Code",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: 3),
              Text(
                "We've sent a 6-digit verification code to",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                ),
              ),

              Text(
                "abcd@gmail.com",
                style: TextStyle(
                  color: AppColors.toplast,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),

              // email write
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Enter Code",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: width * 0.1,
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
                        Container(
                          width: width * 0.1,
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
                        Container(
                          width: width * 0.1,
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
                        Container(
                          width: width * 0.1,
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
                        Container(
                          width: width * 0.1,
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
                        Container(
                          width: width * 0.1,
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
                        SizedBox(width: 20),
                      ],
                    ),
                  ],
                ),
              ),
              // verify code
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Didn't recieve the code ?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Resend Code",
                    style: TextStyle(
                      color: AppColors.toplast,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => Newpasswordpage(role: role),
                      ),
                      (route) => false,
                    );
                  },
                  child: Container(
                    width: width * 0.8,
                    height: height * 0.06,
                    decoration: BoxDecoration(
                      color: AppColors.toplast,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        "Verify Code",
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
    );
  }
}
