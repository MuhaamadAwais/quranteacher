import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Mainapprovalwid extends StatelessWidget {
  const Mainapprovalwid({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.45,
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
                  color: AppColors.islamicNavy400,
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
                          color: AppColors.islamicNavy,
                        ),
                      ),
                  
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Shiekh Omer",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          Text(
                            "omer@examples.com",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                  
                      Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.amber,
                        ),
                        child: Center(
                          child: Text(
                            "Pending",
                            style: TextStyle(
                              color: Colors.orange,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
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
                        "Specialization",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 6),

                      Row(
                        children: [
                          Icon(Icons.star_outline, color: AppColors.primary),
                          const SizedBox(width: 6),
                          const Text("Tajweed Quran Memorization"),
                        ],
                      ),

                      const SizedBox(height: 10),

                      /// Qualification
                      const Text(
                        "Qualification",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text("Ijazah in Quran, 10 years experience"),

                      const SizedBox(height: 10),

                      /// Date
                      const Text(
                        "Applied Date",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const Text("Feb 15, 2024"),

                      const SizedBox(height: 15),

                      /// BUTTONS
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          /// Approve
                          Container(
                            width: width * 0.42,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.primary.withOpacity(0.25),
                              border: Border.all(
                                width: 2,
                                color: AppColors.secondary,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.check, color: AppColors.primary),
                                const SizedBox(width: 5),
                                const Text("Approve"),
                              ],
                            ),
                          ),

                          /// Reject
                          Container(
                            width: width * 0.42,
                            height: height * 0.06,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.destructive.withOpacity(0.25),
                              border: Border.all(
                                width: 2,
                                color: AppColors.destructive,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.cancel_outlined,
                                  color: AppColors.destructive,
                                ),
                                const SizedBox(width: 5),
                                const Text("Reject"),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 12),

                      /// View Full Application
                      Container(
                        width: width,
                        height: height * 0.055,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.switchBackground,
                        ),
                        child: const Center(
                          child: Text("View Full Application"),
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
