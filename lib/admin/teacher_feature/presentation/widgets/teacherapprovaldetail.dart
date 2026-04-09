import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Teacherapprovaldetail extends StatelessWidget {
  const Teacherapprovaldetail({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.92, // Almost full screen
      minChildSize: 0.5,
      maxChildSize: 0.95,
      builder: (context, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            color: Colors.white,
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
                        color: AppColors.toplast,
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Shiekh Omer",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "omer@examples.com",
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
                              color: AppColors.toplast.withOpacity(0.25),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Text(
                              "Pending",
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.toplast,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // Detail Sections
                _buildSection(
                  "Specialization",
                  "Tajweed Quran Memorization\nHifz with Ijazah\nNazra & Translation",
                  Icons.school,
                ),
                _buildSection(
                  "Qualification",
                  "Ijazah in Quran from Al-Azhar\nCertified Tajweed Expert\nIslamic University Graduate",
                  Icons.verified,
                ),
                _buildSection(
                  "Experience",
                  "10+ Years Teaching\n500+ Students\nOnline/Offline Classes",
                  Icons.work_history,
                ),
                _buildSection(
                  "Applied Date",
                  "February 15, 2024",
                  Icons.calendar_today,
                ),
                _buildSection("Madhab", "Hanafi", Icons.balance),
                _buildSection(
                  "Availability",
                  "Weekdays: 4-8 PM\nWeekends: Full Day",
                  Icons.schedule,
                ),
                _buildSection(
                  "Rates",
                  "Individual: PKR 5000/month\nGroup: PKR 3000/month",
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
                        AppColors.toplast,
                        context,
                      ),
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: _buildButton(
                        "Reject",
                        Icons.cancel_outlined,
                        AppColors.toplast,
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
              Icon(icon, color: AppColors.toplast, size: 24),
              const SizedBox(width: 12),
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            details,
            style: TextStyle(
              fontSize: 15,
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
          colors: [color.withOpacity(0.1), color.withOpacity(0.05)],
        ),
        border: Border.all(color: color, width: 2),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: () {
            Navigator.pop(context);
          }, // Yahan logic add karo
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
