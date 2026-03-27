import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Studentapprovaldetail extends StatelessWidget {
  const Studentapprovaldetail({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.9, // Almost full screen
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)],
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Drag Handle
                Center(
                  child: Container(
                    width: 50,
                    height: 5,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
                // Profile Header
                Row(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.islamicNavy800,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Ali Ahmed",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          Text(
                            "ali.ahmed@example.com",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.orange[100],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              "Pending",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // Detail Sections (student‑oriented)
                _buildSection(
                  "Class / Grade",
                  "Grade 10 - A\nQuran & Tajweed",
                  Icons.school,
                ),
                _buildSection(
                  "Level",
                  "Hifz Level 2\nIntermediate Tajweed",
                  Icons.verified,
                ),
                _buildSection(
                  "Experience",
                  "2 Years Learning\n100+ Surahs Memorized\nGroup & Individual Sessions",
                  Icons.work_history,
                ),
                _buildSection(
                  "Registered Date",
                  "January 10, 2024",
                  Icons.calendar_today,
                ),
                _buildSection("Preferred Madhab", "Hanafi", Icons.balance),
                _buildSection(
                  "Availability",
                  "Weekdays: 5-7 PM\nWeekends: 9 AM–2 PM",
                  Icons.schedule,
                ),
                _buildSection(
                  "Monthly Fee",
                  "Regular Student: PKR 3000/month\nGroup Discount: PKR 2000/month",
                  Icons.attach_money,
                ),
                const SizedBox(height: 25),
                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: _buildButton(
                        "Approve",
                        Icons.check_circle,
                        AppColors.primary,
                        context,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildButton(
                        "Reject",
                        Icons.cancel_outlined,
                        AppColors.destructive,
                        context,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildSection(String title, String details, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: AppColors.startgreen, size: 22),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: AppColors.startgreen,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            details,
            style: TextStyle(
              fontSize: 16,
              height: 1.5,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton(
    String text,
    IconData icon,
    Color color,
    BuildContext context,
  ) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [AppColors.islamicNavy600, AppColors.islamicNavy800],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: color, width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: color, size: 22),
              const SizedBox(width: 8),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
