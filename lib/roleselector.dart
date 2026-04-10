import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';

class Roleselector extends StatefulWidget {
  const Roleselector({super.key});

  @override
  State<Roleselector> createState() => _RoleselectorState();
}

class _RoleselectorState extends State<Roleselector>
    with TickerProviderStateMixin {
  bool isstudentpressed = false;
  bool isteacherpressed = false;
  bool isadminpressed = false;

  late AnimationController _controller;
  late Animation<double> _headerAnimation;
  late Animation<double> _forall;
  late Animation<double> _studentcontainerAnimation;
  late Animation<double> _teachercontainerAnimation;
  late Animation<double> _admincontainerAnimation;
  // late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _forall = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
    _headerAnimation = Tween<double>(begin: 0.4, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.0, 0.25, curve: Curves.easeOut),
      ),
    );

    // for student
    _studentcontainerAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.25, 0.5, curve: Curves.easeOut),
      ),
    );
    _controller.forward();
    //for teacher
    _teachercontainerAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.50, 0.75, curve: Curves.easeOut),
      ),
    );
    // for admin
    _admincontainerAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Interval(0.75, 1.0, curve: Curves.easeOut),
      ),
    );
  }

  // for teacher

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.topmaingreen,
                AppColors.bottommaingreen,
                // AppColors.backgroundEnd,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: height * 0.08),
      
                // ✨ Premium Title Section
                ScaleTransition(
                  scale: _headerAnimation,
                  child: FadeTransition(
                    opacity: _headerAnimation,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 24),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.toplast.withOpacity(0.25),
                            AppColors.toplast.withOpacity(0.15),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(32),
                        border: Border.all(color: AppColors.glowBorder, width: 1),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: AppColors.islamicEmerald.withOpacity(0.4),
                        //     blurRadius: 25,
                        //     spreadRadius: 0,
                        //     offset: Offset(0, 12),
                        //   ),
                        // ],
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Select Your Role",
                            style: TextStyle(
                              color: AppColors.textWhite,
                              fontWeight: FontWeight.w800,
                              fontSize: 22,
                              height: 1.2,
                              shadows: [
                                Shadow(
                                  color: Colors.black45,
                                  offset: Offset(2, 2),
                                  blurRadius: 8,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            "Choose how you want to continue",
                            style: TextStyle(
                              color: AppColors.textWhite70,
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
      
                SizedBox(height: height * 0.06),
      
                // 🎓 Student Card
                ScaleTransition(
                  scale: _studentcontainerAnimation,
                  child: FadeTransition(
                    opacity: _studentcontainerAnimation,
                    child: _buildRoleCard(
                      context,
                      width: width * 0.92,
                      height: height * 0.18,
                      isPressed: isstudentpressed,
                      gradientColors: [
                        AppColors.toplast,
                        AppColors.toplast,
                      ],
                      iconColor: AppColors.textWhite,
                      icon: Icons.school_outlined,
                      title: "Student",
                      subtitle: "Learn Quran with expert teacher",
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => Login(role: "student")),
                      ),
                      onTapDown: () => setState(() => isstudentpressed = true),
                      onTapUp: () => setState(() => isstudentpressed = false),
                      onTapCancel: () => setState(() => isstudentpressed = false),
                    ),
                  ),
                ),
      
                SizedBox(height: height * 0.025),
      
                // 👨‍🏫 Teacher Card
                FadeTransition(
                  opacity: _teachercontainerAnimation,
                  child: ScaleTransition(
                    scale: _teachercontainerAnimation,
                    child: FadeTransition(
                      opacity: _teachercontainerAnimation,
                      child: _buildRoleCard(
                        context,
                        width: width * 0.92,
                        height: height * 0.18,
                        isPressed: isteacherpressed,
                        gradientColors: [
                          AppColors.toplast,
                          AppColors.toplast,
                        ],
                        iconBgColor: AppColors.islamicNavy700,
                        iconColor: AppColors.textWhite,
                        icon: Icons.supervisor_account_outlined,
                        title: "Teacher",
                        subtitle: "Teach and inspire students",
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => Login(role:"teacher")),
                        ),
                        onTapDown: () => setState(() => isteacherpressed = true),
                        onTapUp: () => setState(() => isteacherpressed = false),
                        onTapCancel: () =>
                            setState(() => isteacherpressed = false),
                      ),
                    ),
                  ),
                ),
      
                SizedBox(height: height * 0.025),
      
                // ⚙️ Admin Card
                ScaleTransition(
                  scale: _admincontainerAnimation,
      
                  child: FadeTransition(
                    opacity: _admincontainerAnimation,
                    child: _buildRoleCard(
                      context,
                      width: width * 0.92,
                      height: height * 0.18,
                      isPressed: isadminpressed,
                      gradientColors: [AppColors.toplast, AppColors.toplast],
                      iconBgColor: AppColors.pink700,
                      iconColor: AppColors.textWhite,
                      icon: Icons.admin_panel_settings_outlined,
                      title: "Admin",
                      subtitle: "Manage platform and users",
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => Login(role: "admin"),
                        ),
                      ),
                      onTapDown: () => setState(() => isadminpressed = true),
                      onTapUp: () => setState(() => isadminpressed = false),
                      onTapCancel: () => setState(() => isadminpressed = false),
                    ),
                  ),
                ),
      
                SizedBox(height: height * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoleCard(
    BuildContext context, {
    required double width,
    required double height,
    required bool isPressed,
    required List<Color> gradientColors,
    Color? iconBgColor,
    required Color iconColor,
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required VoidCallback onTapDown,
    required VoidCallback onTapUp,
    required VoidCallback onTapCancel,
  }) {
    return GestureDetector(
      onTap: onTap,
      onTapDown: (_) => onTapDown(),
      onTapUp: (_) => onTapUp(),
      onTapCancel: onTapCancel,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        transform: Matrix4.translationValues(0, isPressed ? -18 : 0, 0)
          ..scale(isPressed ? 1.03 : 1.0),
        child: Container(
          width: width,
          height: height,
          margin: EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            gradient: LinearGradient(
              colors: [
                gradientColors[0].withOpacity(isPressed ? 0.95 : 0.85),
                gradientColors[1].withOpacity(isPressed ? 0.75 : 0.65),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            boxShadow: [
              BoxShadow(
                color: gradientColors[0].withOpacity(isPressed ? 0.7 : 0.4),
                blurRadius: isPressed ? 35 : 20,
                spreadRadius: isPressed ? 3 : 1,
                offset: Offset(0, isPressed ? 25 : 12),
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 15,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Row(
              children: [
                // ✨ Animated Icon Container
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.elasticOut,
                  transform: Matrix4.translationValues(
                    0,
                    isPressed ? -10 : 0,
                    0,
                  )..scale(isPressed ? 1.15 : 1.0),
                  padding: EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColors.glowCircle,
                        AppColors.glowBorder.withOpacity(0.5),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: AppColors.glowBorder, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: gradientColors[0].withOpacity(0.3),
                        blurRadius: 20,
                        offset: Offset(0, 8),
                      ),
                    ],
                  ),
                  child: Icon(icon, color: iconColor, size: 24),
                ),

                SizedBox(width: 24),

                // 📝 Text Section
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: AppColors.textWhite,
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          height: 1.2,
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              offset: Offset(2, 2),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppColors.textWhite70,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),

                //    ➡️ Animated Arrow
                AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.easeOut,
                  transform: Matrix4.translationValues(
                    isPressed ? 12 : 0,
                    isPressed ? -10 : 0,
                    0,
                  )..rotateZ(isPressed ? 0.1 : 0),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.textWhite90,
                    size: 24,
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
