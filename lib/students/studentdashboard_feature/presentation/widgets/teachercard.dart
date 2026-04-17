import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class TeacherCard extends StatelessWidget {
  final String name;
  final double rating;
  final int students;
  final String specialty;
  final bool isOnline;
  final Widget? child;
  final double widthchatbutton;
  final double sizeboxwidth;
  final String buttontext;
  final Icon icon;

  const TeacherCard({
    super.key,
    required this.name,
    required this.rating,
    required this.students,
    required this.specialty,
    required this.isOnline,
    this.child,
    this.sizeboxwidth = 0.0,
    this.widthchatbutton = 0.0,
    this.buttontext = 'Request',
    this.icon = const Icon(Icons.send, size: 14),
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.only(bottom: 13),
      padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 20,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start, // Fixed alignment
            children: [
              // Teacher Avatar - Fixed height
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color.fromARGB(255, 8, 44, 26), Color(0xFF054632)],
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 25),
              ),
              SizedBox(width: screenWidth * 0.03),

              // Teacher Info - Fixed structure
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12), // Space for button
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Name + Online Status Row
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              name,
                              style: const TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (isOnline) ...[
                            const SizedBox(width: 8),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 6,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    size: 6,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 3),
                                  Text(
                                    "Online",
                                    style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.green,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ],
                      ),

                      const SizedBox(height: 4),

                      // Rating Row
                      Row(
                        children: [
                          const Icon(Icons.star, color: Colors.amber, size: 14),
                          const SizedBox(width: 4),
                          Text(
                            "${rating.toStringAsFixed(1)} (${students}+ students)",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),

                      const SizedBox(height: 6),

                      // Specialty
                      Text(
                        "${rating.toStringAsFixed(1)} ($students+ students)",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),

                      const SizedBox(height: 8),

                      // Request Button - Fixed width
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: height * 0.01),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: width * 0.32,
                height: height * 0.05,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: icon,
                  label: Text(buttontext, style: TextStyle(fontSize: 13)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.toplast,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(0, 32), // Fixed height
                    textStyle: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              // second chat button
              SizedBox(width: width * sizeboxwidth),
              SizedBox(
                width: width * widthchatbutton,
                height: height * 0.05,
                child: child,
              ),
            ],
          ),
        ],
      ),
    );
  }
}





// ElevatedButton.icon(
//                   onPressed: () {},
//                   icon: const Icon(Icons.send, size: 14),
//                   label: const Text("Request", style: TextStyle(fontSize: 13)),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: AppColors.primary,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 16,
//                       vertical: 8,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     minimumSize: const Size(0, 32), // Fixed height
//                     textStyle: const TextStyle(
//                       fontSize: 13,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),