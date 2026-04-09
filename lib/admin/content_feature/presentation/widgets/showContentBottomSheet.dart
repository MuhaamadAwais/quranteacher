import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

void showContentBottomSheet(BuildContext context, {required String type}) {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController arabicController = TextEditingController();
  final TextEditingController translationController = TextEditingController();
  final TextEditingController referenceController = TextEditingController();
  String smallitter = type.toLowerCase();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
    ),
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height * 0.85,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 20)],
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Drag Handle
              Center(
                child: Container(
                  width: 50,
                  height: 5,
                  margin: const EdgeInsets.only(bottom: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
              ),

              // Header
              Row(
                children: [
                  Icon(
                    Icons.add_circle_outline,
                    color: AppColors.toplast,
                    size: 24,
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      smallitter == 'quran' ? 'Add Quran Ayat' : 'Add Hadith',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),

              // Title Field
              _buildTextField(
                controller: titleController,
                label: 'Title / Surah Name',
                hint: type == 'quran' ? 'سورۃ الفاتحہ' : 'حدیث کا عنوان',
                icon: Icons.title,
              ),
              const SizedBox(height: 20),

              // Arabic Field
              _buildTextField(
                controller: arabicController,
                label: 'Arabic Text (قرآن / حدیث)',
                hint: type == 'quran'
                    ? 'بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ'
                    : 'إِنَّمَا الْأَعْمَالُ بِالنِّيَّاتِ',
                icon: Icons.language,
                textDirection: TextDirection.rtl,
                keyboardType: TextInputType.multiline,
                maxLines: 3,
              ),
              const SizedBox(height: 20),

              // Translation Field
              _buildTextField(
                controller: translationController,
                label: 'Translation',
                hint: 'All the deeds are based on intentions...',
                icon: Icons.translate,
                maxLines: 3,
              ),
              const SizedBox(height: 20),

              // Reference Field
              _buildTextField(
                controller: referenceController,
                label: 'Reference',
                hint: type == 'quran'
                    ? 'سورۃ الفاتحہ: آیت 1'
                    : 'صحیح بخاری: کتاب 1، حدیث 1',
                icon: Icons.bookmark,
              ),
              const SizedBox(height: 30),

              // Action Buttons
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[100],
                        foregroundColor: Colors.black87,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.startgreen,
                        foregroundColor: Colors.white,
                        elevation: 2,
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {
                        // Publish Logic
                        Map<String, String> content = {
                          'title': titleController.text,
                          'arabic': arabicController.text,
                          'translation': translationController.text,
                          'reference': referenceController.text,
                          'type': type,
                          'timestamp': DateTime.now().toString(),
                        };

                        // Firebase ya API call yahan
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Content published successfully! 📢'),
                            backgroundColor: AppColors.startgreen,
                          ),
                        );

                        Navigator.pop(context);
                      },
                      child: const Text(
                        'Publish',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
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

// Helper Method
Widget _buildTextField({
  required TextEditingController controller,
  required String label,
  required String hint,
  required IconData icon,
  TextDirection? textDirection,
  TextInputType? keyboardType,
  int maxLines = 1,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Icon(icon, color: AppColors.startgreen, size: 24),
          const SizedBox(width: 12),
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
      const SizedBox(height: 10),
      TextFormField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        textDirection: textDirection,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey[500]),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.grey[300]!),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.startgreen, width: 2),
          ),
          filled: true,
          fillColor: Colors.grey[50],
          contentPadding: const EdgeInsets.all(16),
        ),
      ),
    ],
  );
}
