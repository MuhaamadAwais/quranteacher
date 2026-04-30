import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/auth_login_feature/bloc/authenticator_bloc.dart';
import 'package:quranteacher/auth_login_feature/screen/login.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/students/appanimations.dart';

class Register extends StatefulWidget {
  final String role;
  const Register({super.key, required this.role});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  // textfiled controller
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController conformpasswordController =
      TextEditingController();

  late AnimationController _controller;
  late Animation<double> registerAnimation;
  late Animation<Offset> scale;
  bool isvisible = false;
  final gmailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$');

  // snack bar screen notification
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Newcolors.green400,
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }

  // register function
  void _register() {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text;
    final confirmPassword = conformpasswordController.text;

    //  Client-side validation
    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        confirmPassword.isEmpty) {
      _showSnackBar('Please fill all fields');
      return;
    }
    if (!gmailRegex.hasMatch(email)) {
      _showSnackBar('Enter valid Gmail address');
      return;
    }
    if (password.length < 6) {
      _showSnackBar('Password must be 6+ characters');
      return;
    }
    if (password != confirmPassword) {
      _showSnackBar('Passwords do not match');
      return;
    }
    if (!isvisible) {
      _showSnackBar('Please accept terms');
      return;
    }

    // ✅ Bloc Event
    context.read<AuthenticatorBloc>().add(
      RegisterEvent(
        name,
        email,
        password,
        widget.role, // student/teacher
      ),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );
    final anicontroller = AppAnimations(_controller);
    registerAnimation = anicontroller.simplefade(
      begin: 0.0,
      end: 1.0,
      curve: Curves.easeInOut,
    );

    scale = anicontroller.simpleslide(
      begin: Offset(0, 1),
      end: Offset.zero,
      curve: Curves.easeInOut,
    );

    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return BlocListener<AuthenticatorBloc, AuthenticatorState>(
      listener: (context, state) {
        if (state is AuthenticatorLoading) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (_) => AlertDialog(
              content: Row(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(width: 20),
                  Text(state.message ?? 'Creating Account...'),
                ],
              ),
            ),
          );
        } else if (state is AuthenticatorSuccess) {
          Navigator.pop(context); // Close loading
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Account created successfully!')),
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => Login(role: widget.role)),
          ); // یا dashboard
        } else if (state is AuthenticatorError) {
          Navigator.pop(context);
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              height: height,
              width: width,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    AppColors.border,
                    const Color.fromARGB(255, 63, 142, 35),
                    // AppColors.backgroundEnd,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: height * 0.05),
                    // SizedBox(height: height * 0.05),
                    ScaleTransition(
                      scale: registerAnimation,
                      child: Container(
                        height: height * 0.12,
                        width: height * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [AppColors.toplast, AppColors.toplast],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                        child: Center(
                          child: Image.asset("assets/images/iconapp.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.01),
                    ScaleTransition(
                      scale: registerAnimation,
                      child: Text(
                        "Create Account",
                        style: TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),

                    //SizedBox(height: height * 0.01),
                    ScaleTransition(
                      scale: registerAnimation,
                      child: Text(
                        "join our learning community",
                        style: TextStyle(
                          color: AppColors.textDark,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.02),
                    ScaleTransition(
                      scale: registerAnimation,
                      child: Container(
                        width: width * 0.9,
                        height: height * 0.72,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: AppColors.icongradient,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height * 0.01),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Full Name",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.textWhite,
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: nameController,
                                      // autofocus: true,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.account_circle),
                                        hint: Text("John Doe"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Email Address",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.textWhite,
                                  ),
                                  child: Center(
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.email),
                                        hint: Text("your.email@example.com"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.textWhite,
                                  ),
                                  child: Center(
                                    child: TextField(
                                      obscureText: true,
                                      controller: passwordController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,

                                        prefixIcon: Icon(Icons.lock_outline),
                                        hint: Text("........"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Confirm Password",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: height * 0.07,
                                  width: width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColors.textWhite,
                                  ),
                                  child: Center(
                                    child: TextField(
                                      obscureText: true,
                                      controller: conformpasswordController,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,
                                        prefixIcon: Icon(Icons.lock_outline),
                                        hint: Text("........"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Checkbox(
                                    activeColor: AppColors.startgreen,
                                    fillColor: MaterialStateProperty.all(
                                      Colors.white30,
                                    ),
                                    value: isvisible,
                                    onChanged: (value) {
                                      setState(() {
                                        isvisible = value!;
                                      });
                                    },
                                  ),

                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "I agree to the ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),

                                        TextSpan(
                                          text: "Terms of Service ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),

                                        TextSpan(
                                          text: " and ",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),

                                        TextSpan(
                                          text: "\n Privacy policy ",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              GestureDetector(
                                onTap: _register,
                                child: Card(
                                  elevation: 10,
                                  shadowColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    height: height * 0.07,
                                    width: width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      gradient: LinearGradient(
                                        colors: [
                                          AppColors.topmiddle,
                                          AppColors.bottommaingreen,
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                      border: Border.all(
                                        color: Colors.grey[500]!,
                                        width: 1,
                                      ),
                                    ),

                                    child: Center(
                                      child: Text(
                                        "Create Account",
                                        style: TextStyle(
                                          color: AppColors.textWhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.015),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.03),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => Login(role: widget.role),
                              ),
                            );
                          },
                          child: GestureDetector(
                            onTap: () {
                              //context.read<AuthenticatorBloc>().add(RegisterEvent(email, password, role))
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Login(role: widget.role),
                                ),
                              );
                            },
                            child: Text(
                              " Login",
                              style: TextStyle(
                                color: Colors.grey[400],
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.06),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
