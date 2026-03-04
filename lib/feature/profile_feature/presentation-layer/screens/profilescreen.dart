import 'package:flutter/material.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/achieventscontainer.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/helpsupportscreen.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/privacysecurityscreen.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/profilecateg.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/profileditbottomsheet.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/qurannotificationscreen.dart';
import 'package:quranteacher/feature/profile_feature/presentation-layer/widgets/topcontainer.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen>
    with TickerProviderStateMixin {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  late AnimationController controller;
  late Animation<double> animationaword1;
  late Animation<double> animationaword2;
  late Animation<double> animationaword3;
  late Animation<double> animationaword4;
  late Animation<double> animationaword5;
  late Animation<double> animationaword6;
  late Animation<double> animationaword7;
  late Animation<double> animationaword8;
  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 8),
    );
    animationaword1 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.0, 0.1, curve: Curves.easeIn),
      ),
    );
    animationaword2 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.2, 0.3, curve: Curves.easeIn),
      ),
    );
    animationaword3 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.3, 0.4, curve: Curves.easeIn),
      ),
    );
    animationaword4 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.4, 0.5, curve: Curves.easeIn),
      ),
    );
    animationaword5 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.5, 0.6, curve: Curves.easeIn),
      ),
    );
    animationaword6 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.6, 0.7, curve: Curves.easeIn),
      ),
    );
    animationaword7 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.7, 0.8, curve: Curves.easeIn),
      ),
    );
    animationaword8 = Tween(begin: 0.3, end: 1.0).animate(
      CurvedAnimation(
        parent: controller,
        curve: Interval(0.9, 1.0, curve: Curves.easeIn),
      ),
    );
    controller.forward();
    controller.repeat(reverse: true);
    super.initState();
  }

  // edit profile bottom sheet function
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //start top container
            Topcontainer(size: size),
            SizedBox(height: height * 0.02),
            //first edit profile container
            GestureDetector(
              onTap: () {
                openBottomSheet();
              },
              child: Profilecateg(
                size: size,
                mainicon: Icon(Icons.person_2_outlined),
                title: "Edit Profile",
                positionalIcon: Icon(Icons.arrow_forward_ios_outlined),
              ),
            ),

            // second Notification conatiner and navigator to quran notification screen.
            SizedBox(height: height * 0.01),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuranNotificationScreen(),
                  ),
                );
              },

              child: Profilecateg(
                size: size,
                mainicon: Icon(Icons.notifications_none),
                title: "Notification",
                positionalIcon: Icon(Icons.arrow_forward_ios),
                color: Colors.blueAccent,
              ),
            ),

            SizedBox(height: height * 0.01),
            //third privacy and security conatiner
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacySecurityScreen(),
                  ),
                );
              },
              child: Profilecateg(
                size: size,
                mainicon: Icon(Icons.privacy_tip_sharp),
                title: "Privacy & Security",
                positionalIcon: Icon(Icons.arrow_forward_ios),
                color: Colors.deepPurpleAccent,
              ),
            ),
            SizedBox(height: height * 0.01),
            // fourth help and support conatiner
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => HelpSupportScreen()),
                );
              },
              child: Profilecateg(
                size: size,
                mainicon: Icon(Icons.help_outline_outlined),
                title: "Help & Support",
                positionalIcon: Icon(Icons.arrow_forward_ios),
                color: Colors.deepOrangeAccent,
              ),
            ),
            SizedBox(height: height * 0.03),
            // add text
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                "Resent Achievements",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: height * 0.03),
            Card(
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
                  // border: Border.all(
                  //   color: const Color.fromARGB(31, 90, 90, 90),
                  //   width: 2,
                  // ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        SizedBox(width: width * 0.02),
                        //first achievents container
                        FadeTransition(
                          opacity: animationaword1,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.amber,
                            achieventsicon: Icon(Icons.emoji_events_rounded),
                          ),
                        ),
                        SizedBox(width: width * 0.01),

                        //second achievents container
                        FadeTransition(
                          opacity: animationaword5,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.orange,
                            achieventsicon: Icon(Icons.star_outlined),
                          ),
                        ),
                        //first achievents container
                        SizedBox(width: width * 0.01),

                        FadeTransition(
                          opacity: animationaword8,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.cyan,
                            achieventsicon: Icon(Icons.auto_stories),
                          ),
                        ),
                        SizedBox(width: width * 0.01),

                        //second achievents container
                        FadeTransition(
                          opacity: animationaword3,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.red,
                            achieventsicon: Icon(Icons.crisis_alert_sharp),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height * 0.01),
                    Row(
                      children: [
                        SizedBox(width: width * 0.02),
                        //first achievents container
                        FadeTransition(
                          opacity: animationaword7,
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

                        //second achievents container
                        FadeTransition(
                          opacity: animationaword2,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.amber,
                            achieventsicon: Icon(
                              Icons.energy_savings_leaf_rounded,
                            ),
                          ),
                        ),
                        //first achievents container
                        SizedBox(width: width * 0.01),

                        FadeTransition(
                          opacity: animationaword3,
                          child: Achieventscontainer(
                            height: height,
                            width: width,
                            iconcolor: Colors.red,
                            achieventsicon: Icon(Icons.star_purple500_rounded),
                          ),
                        ),
                        SizedBox(width: width * 0.01),

                        //second achievents container
                        FadeTransition(
                          opacity: animationaword4,
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
            SizedBox(height: height * 0.03),
            // logut button
            Container(
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
                  Icon(Icons.logout_outlined, color: Colors.red, size: 32),
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
            SizedBox(height: height * 0.03),
          ],
        ),
      ),
    );
  }
}
