import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';
import 'package:quranteacher/students/bottomnavi.dart';

class StudentDetailForm extends StatefulWidget {
  const StudentDetailForm({super.key});

  @override
  State<StudentDetailForm> createState() => _StudentDetailFormState();
}

class _StudentDetailFormState extends State<StudentDetailForm>
    with TickerProviderStateMixin {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _rollNoController = TextEditingController();
  final _classController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _madhabController = TextEditingController();
  final _aboutselfController = TextEditingController();
  final _addressController = TextEditingController();

  late AnimationController _controller;
  late Animation<double> fade;
  late Animation<double> scale;
  late AnimationController _controller1;
  late Animation<double> fade1;
  late Animation<double> scale1;

  String? _selectedGender = 'Male';
  DateTime _selectedAdmissionDate = DateTime.now();

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );
    scale = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    fade = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
    _controller.forward();

    // for button
    _controller1 = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1600),
    );
    scale1 = Tween(
      begin: 0.95,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller1, curve: Curves.bounceInOut));
    fade1 = Tween(
      begin: 0.95,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller1, curve: Curves.bounceInOut));
    _controller1.forward();
    _controller1.repeat(reverse: true);

    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _rollNoController.dispose();
    _classController.dispose();
    _phoneController.dispose();
    _emailController.dispose();
    _madhabController.dispose();
    _aboutselfController.dispose();
    _addressController.dispose();
    _controller.dispose();
    _controller1.dispose();
    super.dispose();
  }

  // pick data from form function
  void _selectAdmissionDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedAdmissionDate,
      firstDate: DateTime(2010),
      lastDate: DateTime(2030),
    );
    if (picked != null && picked != _selectedAdmissionDate) {
      setState(() {
        _selectedAdmissionDate = picked;
      });
    }
  }
  // void _submitForm() {
  //   if (_formKey.currentState?.validate() ?? false) {
  //     final name = _nameController.text.trim();
  //     final rollNo = _rollNoController.text.trim();
  //     final studentClass = _classController.text.trim();
  //     final phone = _phoneController.text.trim();
  //     final email = _emailController.text.trim();
  //     final madhab = _madhabController.text.trim();
  //     final gender = _selectedGender;

  //     ScaffoldMessenger.of(context).showSnackBar(
  //       const SnackBar(
  //         content: Text("Details submitted! Redirecting to dashboard..."),
  //       ),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login(role: "student")),
            );
          },
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Student Detail Form",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.primary,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 👇 TOP INFO CARD (security note)
                ScaleTransition(
                  scale: scale,
                  child: FadeTransition(
                    opacity: fade,
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                        side: BorderSide(
                          color: AppColors.primary.withOpacity(0.3),
                          width: 1.2,
                        ),
                      ),
                      color: AppColors.primary.withOpacity(0.08),
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Row(
                          children: [
                            Icon(
                              Icons.lock,
                              size: 20,
                              color: AppColors.primary,
                            ),
                            const SizedBox(width: 10),
                            Expanded(
                              child: Text(
                                "Your data is secure and will not be shared with any third party or other person.All information is stored only for app functionality.\nNotes\nplease enter correct information otherwise remove from app after varification.",
                                style: TextStyle(
                                  fontSize: 12.5,
                                  color: Colors.white70,
                                  height: 1.4,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // 👇 FORM STARTS HERE

                // Name
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    prefixIcon: const Icon(Icons.person, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Name is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Roll No
                TextFormField(
                  readOnly: true,
                  onTap: () => _selectAdmissionDate(context),
                  decoration: InputDecoration(
                    labelText: "Admission Date",
                    prefixIcon: const Icon(Icons.calendar_today, size: 18),
                    suffixIcon: const Icon(Icons.arrow_drop_down, size: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  controller: TextEditingController(
                    text:
                        '${_selectedAdmissionDate.day}/${_selectedAdmissionDate.month}/${_selectedAdmissionDate.year}',
                  ),
                  validator: (value) {
                    // Optional: agar chaho to date range check karo
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // Class / Grade
                TextFormField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    labelText: "Address",
                    prefixIcon: const Icon(Icons.location_on, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "address is required";
                    }
                    return null;
                  },
                ),

                const SizedBox(height: 16),

                // Class / Grade
                TextFormField(
                  controller: _classController,
                  decoration: InputDecoration(
                    labelText: "Class / Grade",
                    prefixIcon: const Icon(Icons.school, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Class is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Phone
                TextFormField(
                  controller: _phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    prefixIcon: const Icon(Icons.phone, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Phone number is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Email
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Email is required";
                    }
                    if (!value.contains('@')) {
                      return "Enter a valid email";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Madhab
                TextFormField(
                  controller: _madhabController,
                  decoration: InputDecoration(
                    labelText: "Madhab (e.g. Hanafi)",
                    prefixIcon: const Icon(Icons.book, size: 18),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Madhab is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Gender
                Row(
                  children: [
                    const Text("Gender:", style: TextStyle(fontSize: 15)),
                    const SizedBox(width: 16),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        value: _selectedGender,
                        items: const [
                          DropdownMenuItem(
                            value: 'Male',
                            child: Text(
                              'Male',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          DropdownMenuItem(
                            value: 'Female',
                            child: Text(
                              'Female',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 8,
                          ),
                        ),
                        style: const TextStyle(fontSize: 15),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Gender is required";
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _aboutselfController,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    labelText: "about yourself",
                    prefixIcon: const Icon(Icons.person, size: 24),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 12,
                    ),
                  ),
                  style: const TextStyle(fontSize: 15),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "about yourself is required";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),

                // Submit Button
                Center(
                  child: ScaleTransition(
                    scale: scale1,

                    child: FadeTransition(
                      opacity: fade1,
                      child: SizedBox(
                        width: width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Bottomnavi(),
                                ),
                                (router) => false,
                              );
                            }
                          },
                          child: const Text(
                            "Submit & Proceed to Dashboard",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
