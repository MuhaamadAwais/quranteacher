import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/studentdashboard_feature/presentation/widgets/studentchatscreen.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/detailchip.dart';
import 'package:quranteacher/teacher/teacherdashboard_feature/presentation/widgets/teacherchatscreen.dart';

class RequestCard extends StatelessWidget {
  final String studentName;
  final String level;
  final String time;
  final String madhab;
  final bool isNew;
  final bool isAccepted;

  const RequestCard({
    super.key,
    required this.studentName,
    required this.level,
    required this.time,
    required this.madhab,
    required this.isNew,
    required this.isAccepted,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
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
          // Student Info Row
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.primary, Colors.green],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Icon(Icons.person, color: Colors.white, size: 24),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      studentName,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      level,
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              if (isNew)
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orange.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    "New",
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                ),
            ],
          ),

          const SizedBox(height: 16),

          // Details Row
          Row(
            children: [
              DetailChip(icon: Icons.schedule, label: time, color: Colors.blue),
              const SizedBox(width: 12),
              DetailChip(
                icon: Icons.school,
                label: madhab,
                color: Colors.purple,
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Action Buttons
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isAccepted
                  ? SizedBox(
                      width: screenWidth * 0.37,
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TeacherChatScreen(
                                studentName: "Muhammad Ali",
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.chat, size: 18),
                        label: const Text("Chat"),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.grey[100],
                          foregroundColor: Colors.grey[800],
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    isAccepted ? Icons.check_circle : Icons.person_add,
                  ),
                  label: Text(isAccepted ? "Teaching" : "Accept"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
