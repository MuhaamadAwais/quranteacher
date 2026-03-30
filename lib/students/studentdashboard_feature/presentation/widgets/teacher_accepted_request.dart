import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/studentchatscreen.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/teachercard.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class TeacherAcceptedRequest extends StatelessWidget {
  const TeacherAcceptedRequest({super.key});
  // String title = "Find Your Teacher";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Column(
        children: [
          // Modern AppBar
          TopcommonContainer(
            title: "Accepted Request",
            subTitle: "Fully connected with  Teacher",
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(26),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Search Bar
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 20,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search teachers by name, location...",
                        prefixIcon: Icon(Icons.search, color: Colors.grey[400]),
                        suffixIcon: Icon(Icons.tune, color: Colors.grey[400]),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 16,
                        ),
                      ),
                    ),
                  ),

                  // Featured Teachers Section
                  Text(
                    "All Accepted Teachers",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: AppColors.islamicNavy900,
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Teacher Cards
                  ...List.generate(
                    4,
                    (index) => TeacherCard(
                      widthchatbutton: 0.32,
                      sizeboxwidth: 0.1,
                      buttontext: "Accepted",
                      icon: Icon(Icons.done_all_outlined),
                      name: index == 0
                          ? "Ustadah Ayesha"
                          : index == 1
                          ? "Sheikh Ahmed"
                          : "Ustad Bilal",
                      rating: 4.9 - (index * 0.1),
                      students: 127 + (index * 23),
                      specialty: index == 0
                          ? "Tajweed Expert"
                          : index == 1
                          ? "Hifz Teacher"
                          : "Quran Basics",
                      isOnline: index != 2,

                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => StudentChatScreen(
                                teacherName: "Ustadah Ayesha",
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.chat, size: 14),
                        label: const Text(
                          "Chat Now",
                          style: TextStyle(fontSize: 13),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.primary,
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
                  ),

                  const SizedBox(height: 24),

                  // Available Now Section
                  // const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
