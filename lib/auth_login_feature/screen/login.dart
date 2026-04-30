import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/auth_login_feature/bloc/authenticator_bloc.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/pages/forgotpasswordpage.dart';
import 'package:quranteacher/newcolors.dart';
import 'package:quranteacher/auth_login_feature/screen/register.dart';
import 'package:quranteacher/students/appanimations.dart';
import 'package:quranteacher/students/studentdetailform.dart';
import 'package:quranteacher/teacher/teacherdet_features/presentation/pages/teacherdetailspage.dart';

class Login extends StatefulWidget {
  final String role;
  const Login({super.key, required this.role});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  //textfiled controller
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late AnimationController _controller;
  late Animation<double> loginAnimation;
  late Animation<Offset> scale;
  bool isvisible = false;
  final gmailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@gmail\.com$');

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          message,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),

        backgroundColor: Newcolors.green400,
        // padding: EdgeInsets.all(20),
        behavior: SnackBarBehavior.floating,
        //margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      ),
    );
  }

  // register function
  void _loginRegister() {
    final email = emailController.text.trim();
    final password = passwordController.text;

    //  Client-side validation
    if (email.isEmpty || password.isEmpty) {
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
    if (!isvisible) {
      _showSnackBar('Please accept terms');
      return;
    }

    // ✅ Bloc Event
    context.read<AuthenticatorBloc>().add(
      LoginEvent(email, password, widget.role),
    );
  }

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    final anicontroller = AppAnimations(_controller);
    loginAnimation = anicontroller.simplefade(
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
                  Text(state.message ?? 'Checking Credentials...'),
                ],
              ),
            ),
          );
        } else if (state is AuthenticatorSuccess) {
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          } // Close loading
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Account created successfully!')),
          );
          if (widget.role == "teacher") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => Teacherdetailspage()),
            ); // یا dashboard
          } else if (widget.role == "student") {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => StudentDetailForm()),
            ); // یا dashboard
          }
          _showSnackBar("Login Successfull");
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
                    SizedBox(height: height * 0.04),
                    Container(
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
                    SizedBox(height: height * 0.02),
                    Text(
                      "Welcome Back",
                      style: TextStyle(
                        color: AppColors.textGreen,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: height * 0.02),

                    // // SizedBox(height: height * 0.02),
                    // Text(
                    //   "Sign in to continue learning",
                    //   style: TextStyle(
                    //     color: Colors.white,
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 20,
                    //   ),
                    // ),

                    // SizedBox(height: height * 0.03),
                    AnimatedBuilder(
                      animation: _controller,
                      builder: (context, child) {
                        return ScaleTransition(
                          scale: loginAnimation,
                          child: child,
                        );
                      },
                      child: Container(
                        width: width * 0.9,
                        height: height * 0.62,
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
                                      // autofocus: true,
                                      keyboardType: TextInputType.emailAddress,
                                      keyboardAppearance: Brightness.light,
                                      decoration: InputDecoration(
                                        border: InputBorder.none,

                                        prefixIcon: Icon(Icons.email),
                                        hint: Text("your.email@example.com"),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // SizedBox(height: height * 0.01),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "password",
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
                                  Text(
                                    "Remember me",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              Forgotpasswordpage(
                                                role: widget.role,
                                              ),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      "Forget Password?",
                                      style: TextStyle(
                                        color: AppColors.whitePrimary,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),

                              GestureDetector(
                                onTap: _loginRegister,
                                child: Card(
                                  elevation: 80,
                                  shadowColor: Newcolors.green300,
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
                                          AppColors.startgreen,
                                          AppColors.topmiddle,
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
                                        "Login",
                                        style: TextStyle(
                                          color: AppColors.textWhite,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height * 0.02),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Divider(
                                      thickness: 2,
                                      color: AppColors.switchBackground,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                      "Or continue with",
                                      style: TextStyle(
                                        color: AppColors.switchBackground,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Divider(
                                      thickness: 1,
                                      color: AppColors.switchBackground,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: height * 0.01),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      context.read<AuthenticatorBloc>().add(
                                        GoogleLoginEvent(widget.role),
                                      );
                                    },
                                    child: Container(
                                      height: height * 0.06,
                                      width: width * 0.4,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        color: AppColors.textWhite,
                                      ),
                                      child: Row(
                                        children: [
                                          SizedBox(width: width * 0.02),
                                          CircleAvatar(
                                            radius: 22,
                                            backgroundColor: Colors.transparent,
                                            child: Image(
                                              image: AssetImage(
                                                "assets/images/googl.png",
                                              ),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          SizedBox(width: width * 0.0),

                                          Text(
                                            "Google  ",
                                            style: TextStyle(
                                              color: AppColors.toplast,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: height * 0.03),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "Don't have an account?",
                            style: TextStyle(
                              color: AppColors.textWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),

                          TextSpan(
                            text: " register now",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        Register(role: widget.role),
                                  ),
                                );
                              },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: height * 0.05),
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
