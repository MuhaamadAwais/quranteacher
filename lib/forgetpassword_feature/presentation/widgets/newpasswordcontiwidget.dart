import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/sucessfullyypage.dart';

class Newpasswordcontiwidget extends StatelessWidget {
  final String role;
  const Newpasswordcontiwidget({super.key, required this.role});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 15,
      shadowColor: AppColors.greenDark,
      child: Container(
        width: width * 0.9,
        height: height * 0.85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 200, 230, 201),
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
                color: AppColors.toplast.withOpacity(0.25),
              ),
              child: Center(
                child: Icon(size: 24, Icons.lock, color: AppColors.toplast),
              ),
            ),

            SizedBox(height: 10),
            Text(
              "Create New Password",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            SizedBox(height: 5),
            Text(
              "Your new password  must be different",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),
            Text(
              "from previously used passwrods.",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.normal,
                fontSize: 14,
              ),
            ),

            // new password
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "New Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  // Container(
                  //   width: width * 0.88,
                  //   height: height * 0.07,
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(20),
                  //     color: AppColors.switchBackground.withOpacity(0.25),
                  //     border: Border.all(
                  //       width: 2,
                  //       color: AppColors.switchBackground,
                  //     ),
                  //   ),
                  //   child: Center(
                  // child:
                  SizedBox(
                    width: width * 0.87,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: AppColors.greenDark,
                          size: 24,
                        ),

                        hintText: "........",

                        filled: true,
                        fillColor: Colors.white,

                        // contentPadding: EdgeInsets.symmetric(
                        //   vertical: 18,
                        //   horizontal: 16,
                        // ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),

                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.toplast,
                            width: 2,
                          ),
                        ),

                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: Colors.grey.shade200,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // confirm password
            SizedBox(height: 2),
            Padding(
              padding: const EdgeInsets.only(left: 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 8),

                  SizedBox(
                    width: width * 0.85,
                    height: height * 0.07,
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outlined,
                            color: AppColors.greenDark,
                            size: 24,
                          ),

                          hintText: "........",

                          filled: true,
                          fillColor: Colors.white,

                          // contentPadding: EdgeInsets.symmetric(
                          //   vertical: 18,
                          //   horizontal: 16,
                          // ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),

                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: AppColors.toplast,
                              width: 2,
                            ),
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
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
            SizedBox(height: 10),
            // conditions
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: height * 0.14,
                width: width * 0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: AppColors.switchBackground.withOpacity(0.25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Password must contain:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.switchBackground.withOpacity(
                                0.25,
                              ),
                            ),
                          ),

                          SizedBox(width: 10),
                          Text(
                            "At least characters",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      // second
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.switchBackground.withOpacity(
                                0.25,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "One uppercase letter",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),

                      // third
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.switchBackground.withOpacity(
                                0.25,
                              ),
                            ),
                          ),

                          SizedBox(width: 10),
                          Text(
                            "One number or special character",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // reset
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => Sucessfullyypage(role: role),
                    ),
                    (route) => false,
                  );
                },
                child: Container(
                  width: width * 0.8,
                  height: height * 0.07,
                  decoration: BoxDecoration(
                    color: AppColors.toplast,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      "Reset Password",
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
    );
  }
}
