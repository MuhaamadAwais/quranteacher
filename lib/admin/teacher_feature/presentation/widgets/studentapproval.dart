import 'package:flutter/material.dart';
import 'package:quranteacher/commonbottomsheet.dart';
import 'package:quranteacher/admin/teacher_feature/presentation/widgets/studentapprovaldetail.dart';
import 'package:quranteacher/appcolors.dart';

class Studentapproval extends StatelessWidget {
  const Studentapproval({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.55,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              /// TOP HEADER
              Container(
                width: width,
                height: height * 0.1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColors.topmiddle,
                      AppColors.bottommiddle,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.toplast.withOpacity(0.25),
                        ),
                        child: Icon(Icons.person, color: AppColors.textWhite,size: 24,),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Student Name\nAsrar Ashraf",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            "student@examples.com",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),

                      Container(
                        width: width * 0.2,
                        height: height * 0.04,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.toplast.withOpacity(0.25),
                        ),
                        child: Center(
                          child: Text(
                            "Pending",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: AppColors.textWhite,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Course:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 6),

                      Row(
                        children: [
                          Icon(Icons.star_outline, color: AppColors.toplast),
                          const SizedBox(width: 6),
                          const Text(
                            "Basic learn Quran",
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      /// Qualification
                      const Text(
                        "Qualification:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      const Text(
                        "Matric",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),

                      const SizedBox(height: 10),

                      /// Date
                      const Text(
                        "Applied Date:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      const Text(
                        "March 12, 2023",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),

                      const SizedBox(height: 15),

                      /// BUTTONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Approve
                          GestureDetector(
                            onTap: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  backgroundColor: Color.fromARGB(
                                    255,
                                    7,
                                    45,
                                    183,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  padding: EdgeInsets.all(16),
                                  content: Text(
                                    "Student Approved successfully!",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: width * 0.36,
                              height: height * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.toplast.withOpacity(0.25),
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.endgreen,
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      Icon(
                                        Icons.check,
                                        color: AppColors.toplast,
                                        size: 24,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "Approve",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: AppColors.toplast,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          /// Reject
                          GestureDetector(
                            onTap: () {
                              bottomsheet(
                                context,
                                title: "Reject confirmation",
                                message:
                                    "Are you sure you want to reject this Student?",
                                firstbutton: "Cancel",
                                secondbutton: "Reject",
                              );
                            },
                            child: Container(
                              width: width * 0.37,
                              height: height * 0.06,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: AppColors.toplast.withOpacity(0.25),
                                border: Border.all(
                                  width: 2,
                                  color: AppColors.toplast,
                                ),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,

                                    children: [
                                      SizedBox(width: 10),
                                      Icon(
                                        Icons.cancel_outlined,
                                        color: AppColors.toplast,
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        "Reject",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: AppColors.toplast,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 25),

                      /// View Full Application
                      // Original button ko replace karo is se:
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            isScrollControlled: true,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25),
                              ),
                            ),
                            builder: (context) => const Studentapprovaldetail(),
                          );
                        },
                        child: Container(
                          // Tumhara original gradient container same
                          width: width,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.toplast,
                                AppColors.toplast,
                              ],
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "View Full Application",
                              style: TextStyle(
                                color: AppColors.textWhite,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
