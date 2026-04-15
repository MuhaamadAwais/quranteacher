import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/students/topcommon_container.dart';

class TeacherRequestForm extends StatefulWidget {
  const TeacherRequestForm({super.key});

  @override
  State<TeacherRequestForm> createState() => _TeacherRequestFormState();
}

class _TeacherRequestFormState extends State<TeacherRequestForm> {
  final _formKey = GlobalKey<FormState>();
  String? selectedLevel;
  String? preferredTime;
  String? preferredMadhab;
  String? teacherselct;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          TopcommonContainer(
            title: "Request Teacher",
            subTitle: "Fill your details for perfect match",
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(screenWidth * 0.05),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Student Name
                    Text(
                      "Full Name",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your full name",
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColors.textGreen,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    ),

                    const SizedBox(height: 20),

                    // Quran Level Dropdown
                    Text(
                      "Your Quran Level",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: selectedLevel,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.book,
                          color: AppColors.textGreen,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "Beginner",
                          child: Text("Beginner"),
                        ),
                        DropdownMenuItem(
                          value: "Intermediate",
                          child: Text("Intermediate"),
                        ),
                        DropdownMenuItem(
                          value: "Advanced",
                          child: Text("Advanced"),
                        ),
                        DropdownMenuItem(value: "Hifz", child: Text("Hifz")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedLevel = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Select your level' : null,
                    ),

                    const SizedBox(height: 20),

                    // Preferred Time
                    Text(
                      "Preferred Learning Time",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: preferredTime,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.schedule,
                          color: AppColors.textGreen,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "Morning",
                          child: Text("Morning (8AM-12PM)"),
                        ),
                        DropdownMenuItem(
                          value: "Afternoon",
                          child: Text("Afternoon (12PM-5PM)"),
                        ),
                        DropdownMenuItem(
                          value: "Evening",
                          child: Text("Evening (5PM-10PM)"),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          preferredTime = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Select time' : null,
                    ),

                    const SizedBox(height: 20),

                    // Madhab Preference
                    Text(
                      "Mazhab Preference",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: preferredMadhab,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.language,
                          color: AppColors.textGreen,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "Hanafi",
                          child: Text("Hanafi"),
                        ),
                        DropdownMenuItem(value: "Shafi", child: Text("Shafi")),
                        DropdownMenuItem(
                          value: "Maliki",
                          child: Text("Maliki"),
                        ),
                        DropdownMenuItem(
                          value: "Hanbali",
                          child: Text("Hanbali"),
                        ),
                        DropdownMenuItem(value: "Any", child: Text("Any")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          preferredMadhab = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Select preference' : null,
                    ),

                    const SizedBox(height: 20),

                    // Madhab Preference
                    Text(
                      "Select Teacher",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textGreen,
                      ),
                    ),
                    const SizedBox(height: 8),
                    DropdownButtonFormField<String>(
                      initialValue: teacherselct,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.person,
                          color: AppColors.textGreen,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                        contentPadding: EdgeInsets.symmetric(vertical: 16),
                      ),
                      items: const [
                        DropdownMenuItem(
                          value: "Tajweed",
                          child: Text("Tajweed"),
                        ),
                        DropdownMenuItem(
                          value: "Hadith",
                          child: Text("Hadith"),
                        ),
                        DropdownMenuItem(value: "Quran", child: Text("Quran")),
                      ],
                      onChanged: (value) {
                        setState(() {
                          teacherselct = value;
                        });
                      },
                      validator: (value) =>
                          value == null ? 'Select teacher' : null,
                    ),

                    const SizedBox(height: 20),

                    const SizedBox(height: 30),

                    // Submit Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Send request to backend
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Request sent successfully!'),
                                backgroundColor: Colors.green,
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppColors.toplast,
                          foregroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 5,
                        ),
                        child: const Text(
                          "Send Request",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // FAQ Section
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.grey[50],
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.grey[200]!),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.help_outline,
                                color: AppColors.primary,
                                size: 24,
                              ),
                              const SizedBox(width: 12),
                              const Text(
                                "How it works?",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            "Your request will be matched with qualified teachers. You'll receive notifications when teachers respond.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
