import 'package:flutter/material.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/achieventscontainer.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/helpsupportscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/privacysecurityscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/profilecateg.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/profileditbottomsheet.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/qurannotificationscreen.dart';
import 'package:quranteacher/students/profile_feature/presentation-layer/widgets/topcontainer.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen>
    with TickerProviderStateMixin {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  // 🔥 LessonScreen main controller
  late AnimationController _mainController;
  late Animation<Offset> _slideAnimation;
  late Animation<double> _fadeAnimation;

  // 🔥 Achievements staggered controllers (پہلی والی animation)
  late AnimationController _achieveController;
  late Animation<double> animation1, animation2, animation3, animation4;
  late Animation<double> animation5, animation6, animation7, animation8;

  @override
  void initState() {
    super.initState();

    // 🔥 Main LessonScreen animation (1s)
    _mainController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 0.08),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _mainController, curve: Curves.easeOut));
    _fadeAnimation = Tween<double>(begin: 0, end: 1).animate(_mainController);
    _mainController.forward();

    // 🔥 Achievements animation (8s loop جیسے پہلے)
    _achieveController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );
    animation1 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.0, 0.1, curve: Curves.easeIn),
      ),
    );
    animation2 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.2, 0.3, curve: Curves.easeIn),
      ),
    );
    animation3 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.3, 0.4, curve: Curves.easeIn),
      ),
    );
    animation4 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.4, 0.5, curve: Curves.easeIn),
      ),
    );
    animation5 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.5, 0.6, curve: Curves.easeIn),
      ),
    );
    animation6 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.6, 0.7, curve: Curves.easeIn),
      ),
    );
    animation7 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.7, 0.8, curve: Curves.easeIn),
      ),
    );
    animation8 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: _achieveController,
        curve: Interval(0.9, 1.0, curve: Curves.easeIn),
      ),
    );

    _achieveController.forward();
    _achieveController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _mainController.dispose();
    _achieveController.dispose();
    usernameController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void openBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => Profileditbottomsheet(
        usernameController: usernameController,
        addressController: addressController,
        imageUrl:
            "https://www.alamy.com/arabic-muslim-student-studying-online-image414993841.html",
        onSave: () {
          print(usernameController.text);
          print(addressController.text);
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: FadeTransition(
        opacity: _fadeAnimation, // 🔥 MAIN LessonScreen animation
        child: SlideTransition(
          position: _slideAnimation,
          child: SingleChildScrollView(
            child: Column(
              children: [
                // 🔥 1. Top Container + staggered cards (LessonScreen style)
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 400),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) {
                    return Opacity(
                      opacity: value,
                      child: Transform.translate(
                        offset: Offset(0, 20 * (1 - value)),
                        child: child,
                      ),
                    );
                  },
                  child: Topcontainer(size: size),
                ),

                SizedBox(height: height * 0.02),

                // 🔥 Profile cards (staggered)
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 550),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: openBottomSheet,
                    child: Profilecateg(
                      size: size,
                      mainicon: Icon(Icons.person_2_outlined),
                      title: "Edit Profile",
                      positionalIcon: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01),
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 700),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuranNotificationScreen(),
                      ),
                    ),
                    child: Profilecateg(
                      size: size,
                      mainicon: Icon(Icons.notifications_none),
                      title: "Notification",
                      positionalIcon: Icon(Icons.arrow_forward_ios),
                      color: Colors.blueAccent,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01),
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 850),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PrivacySecurityScreen(),
                      ),
                    ),
                    child: Profilecateg(
                      size: size,
                      mainicon: Icon(Icons.privacy_tip_sharp),
                      title: "Privacy & Security",
                      positionalIcon: Icon(Icons.arrow_forward_ios),
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.01),
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 1000),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => HelpSupportScreen()),
                    ),
                    child: Profilecateg(
                      size: size,
                      mainicon: Icon(Icons.help_outline_outlined),
                      title: "Help & Support",
                      positionalIcon: Icon(Icons.arrow_forward_ios),
                      color: Colors.deepOrangeAccent,
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),

                // 🔥 Achievements Title
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 1150),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(right: 100),
                    child: Text(
                      "Resent Achievements",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                SizedBox(height: height * 0.03),

                // 🔥 Achievements Container + پہلی والی cool animation
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 1300),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.scale(
                      scale: 0.95 + (0.05 * value),
                      child: child,
                    ),
                  ),
                  child: Card(
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      height: height * 0.26,
                      width: width * 0.96,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              SizedBox(width: width * 0.02),
                              FadeTransition(
                                opacity: animation1,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.amber,
                                  achieventsicon: Icon(
                                    Icons.emoji_events_rounded,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation5,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.orange,
                                  achieventsicon: Icon(Icons.star_outlined),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation8,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.cyan,
                                  achieventsicon: Icon(Icons.auto_stories),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation3,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.red,
                                  achieventsicon: Icon(
                                    Icons.crisis_alert_sharp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: height * 0.01),
                          Row(
                            children: [
                              SizedBox(width: width * 0.02),
                              FadeTransition(
                                opacity: animation7,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.yellow,
                                  achieventsicon: Icon(
                                    Icons.local_fire_department_sharp,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation2,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.amber,
                                  achieventsicon: Icon(
                                    Icons.energy_savings_leaf_rounded,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation3,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.red,
                                  achieventsicon: Icon(
                                    Icons.star_purple500_rounded,
                                  ),
                                ),
                              ),
                              SizedBox(width: width * 0.01),
                              FadeTransition(
                                opacity: animation4,
                                child: Achieventscontainer(
                                  height: height,
                                  width: width,
                                  iconcolor: Colors.teal,
                                  achieventsicon: Icon(Icons.architecture),
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

                // 🔥 Logout
                TweenAnimationBuilder<double>(
                  duration: Duration(milliseconds: 1400),
                  tween: Tween(begin: 0, end: 1),
                  curve: Curves.easeOut,
                  builder: (context, value, child) => Opacity(
                    opacity: value,
                    child: Transform.translate(
                      offset: Offset(0, 20 * (1 - value)),
                      child: child,
                    ),
                  ),
                  child: Container(
                    height: height * 0.06,
                    width: width * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.red, width: 2),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: width * 0.23),
                        Icon(
                          Icons.logout_outlined,
                          color: Colors.red,
                          size: 32,
                        ),
                        SizedBox(width: width * 0.03),
                        Text(
                          "Logout",
                          style: TextStyle(
                            color: Colors.red,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: height * 0.03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
