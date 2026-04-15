import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/studentchatscreen.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/teacher_accepted_request.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/teachercard.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/teacherrequestform.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class TeacherRequestScreen extends StatelessWidget {
  const TeacherRequestScreen({super.key});
  // String title = "Find Your Teacher";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Modern AppBar
          TopcommonContainer(
            title: "Find Your Teacher",
            subTitle: "Connect with qualified Quran teachers",
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Teacher List",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textGreen,
                        ),
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStatePropertyAll(
                            AppColors.textGreen,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const TeacherAcceptedRequest(),
                            ),
                          );
                        },
                        child: Text(
                          "Accept request",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Teacher Cards
                  ...List.generate(
                    4,
                    (index) => TeacherCard(
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
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Available Now Section
                  // const SizedBox(height: 24),

                  // Quick Request CTA
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [AppColors.toplast, AppColors.bottommiddle],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          blurRadius: 25,
                          offset: const Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const Icon(Icons.school, color: Colors.white, size: 48),
                        const SizedBox(height: 16),
                        Text(
                          "Ready to Start Your Quran Journey?",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 12),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const TeacherRequestForm(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              foregroundColor: AppColors.secondary,
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: const Text(
                              "Send Teacher Request",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
