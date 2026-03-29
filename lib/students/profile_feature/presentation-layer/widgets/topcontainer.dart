import 'package:flutter/material.dart';

class Topcontainer extends StatefulWidget {
  const Topcontainer({super.key, required this.size});
  final Size size;

  @override
  State<Topcontainer> createState() => _TopcontainerState();
}

class _TopcontainerState extends State<Topcontainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeAnimation;
  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );
    _fadeAnimation = Tween<double>(begin: 0.4, end: 1).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = widget.size.height;
    final width = widget.size.width;
    return Container(
      height: height * 0.56,
      width: width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF006633), const Color(0xCC054632)],
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: width * 0.36,
            top: height * 0.1,
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person_2_rounded,
                size: 40,
                color: Colors.black,
              ),
            ),
          ),
          // start cemera
          Positioned(
            left: width * 0.56,
            top: height * 0.19,
            child: Container(
              height: height * 0.05,
              width: width * 0.1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 245, 130, 94),
                    Colors.deepOrange,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color.fromARGB(255, 51, 164, 138),
                  width: 3,
                ),
              ),
              child: Icon(Icons.military_tech_outlined, color: Colors.white),
            ),
          ),
          //userName
          Positioned(
            left: width * 0.3,
            top: height * 0.23,
            child: Text(
              "M Asrar Ashraf",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            left: width * 0.33,
            top: height * 0.27,
            child: Text(
              "abcd@gmail.com",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //container
          Positioned(
            left: width * 0.27,
            top: height * 0.31,
            child: Container(
              height: height * 0.06,
              width: width * 0.5,
              decoration: BoxDecoration(
                color: Colors.white38,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white60),
              ),
              child: Row(
                children: [
                  SizedBox(width: width * 0.02),
                  Icon(Icons.star, color: Colors.yellow, size: 35),
                  SizedBox(width: width * 0.02),
                  Text(
                    "Level 5 Scholar",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // top last container
          Positioned(
            left: width * 0.04,
            top: height * 0.39,
            child: Row(
              children: [
                SizedBox(width: width * 0.02),
                //first container in row
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: RotationTransition(
                    turns: _fadeAnimation,
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.28,
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1.5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(60, 52, 233, 169),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Icon(Icons.menu_book, color: Colors.white),
                          ),
                          Text(
                            "completed",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            "42 Classes",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),

                //second container in row
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: RotationTransition(
                    turns: _fadeAnimation,
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.28,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1.5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 245, 130, 94),
                                  Colors.deepOrange,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Icon(
                              Icons.military_tech,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Achievements",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            "18 Badges",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: width * 0.02),

                //third container in row
                FadeTransition(
                  opacity: _fadeAnimation,
                  child: RotationTransition(
                    turns: _fadeAnimation,
                    child: Container(
                      height: height * 0.15,
                      width: width * 0.28,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1.5),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.02),
                          Container(
                            height: height * 0.05,
                            width: width * 0.1,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  const Color.fromARGB(255, 94, 134, 245),
                                  const Color.fromARGB(255, 44, 33, 243),
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.grey,
                                width: 1.5,
                              ),
                            ),
                            child: Icon(
                              Icons.calendar_month_sharp,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Streak",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Text(
                            "15 days",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
