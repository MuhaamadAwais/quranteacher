import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/login.dart';
import 'package:quranteacher/newcolors.dart';
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

class _ProfilescreenState extends State<Profilescreen> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void dispose() {
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Topcontainer(size: size),
            SizedBox(height: height * 0.02),

            // Profile Cards - NO ANIMATION
            _buildCard(
              icon: Icons.person_2_outlined,
              title: "Edit Profile",
              color: null,
              onTap: openBottomSheet,
            ),
            SizedBox(height: height * 0.01),
            _buildCard(
              icon: Icons.notifications_none,
              title: "Notification",
              color: AppColors.bottommaingreen,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuranNotificationScreen(),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            _buildCard(
              icon: Icons.privacy_tip_sharp,
              title: "Privacy & Security",
              color: Colors.deepPurpleAccent,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacySecurityScreen(),
                ),
              ),
            ),
            SizedBox(height: height * 0.01),
            _buildCard(
              icon: Icons.help_outline_outlined,
              title: "Help & Support",
              color: Colors.deepOrangeAccent,
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => HelpSupportScreen()),
              ),
            ),

            SizedBox(height: height * 0.04),

            // Profile Stats Section
            _buildProfileStatsSection(context, size),
            SizedBox(height: height * 0.03),

            // Logout Button - NO ANIMATION
            _buildLogoutButton(size),
            SizedBox(height: height * 0.05),
          ],
        ),
      ),
    );
  }

  // ✅ SIMPLE STATIC CARDS - NO ANIMATION
  Widget _buildCard({
    required IconData icon,
    required String title,
    Color? color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Profilecateg(
        size: MediaQuery.of(context).size,
        mainicon: Icon(icon, size: 28),
        title: title,
        positionalIcon: Icon(Icons.arrow_forward_ios, size: 18),
        color: color ?? Newcolors.green700,
      ),
    );
  }

  // ✅ SIMPLE STATS SECTION - NO ANIMATION
  Widget _buildProfileStatsSection(BuildContext context, Size size) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400; // Phone vs Tablet detection

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.all(isSmallScreen ? 16 : 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Newcolors.green400.withOpacity(0.25),
            blurRadius: isSmallScreen ? 15 : 25,
            offset: Offset(0, isSmallScreen ? 6 : 10),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 🔥 RESPONSIVE Header
          Padding(
            padding: EdgeInsets.only(bottom: isSmallScreen ? 16 : 20),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(isSmallScreen ? 12 : 14),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Newcolors.green700, Newcolors.green400],
                    ),
                    borderRadius: BorderRadius.circular(
                      isSmallScreen ? 16 : 20,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Newcolors.green400.withOpacity(0.4),
                        blurRadius: isSmallScreen ? 8 : 12,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.white,
                    size: isSmallScreen ? 24 : 28,
                  ),
                ),
                SizedBox(width: isSmallScreen ? 12 : 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        // ✅ Auto-scale text
                        child: Text(
                          "Your Progress",
                          style: TextStyle(
                            fontSize: isSmallScreen ? 18 : 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                      ),
                      SizedBox(height: 2),
                      FittedBox(
                        child: Text(
                          "Student Stats",
                          style: TextStyle(
                            fontSize: isSmallScreen ? 12 : 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // 🔥 RESPONSIVE Stats Layout
          if (isSmallScreen)
            // Small Screen: Vertical Stack
            Column(
              children: [
                _buildResponsiveStatCard(
                  context: context,
                  icon: Icons.menu_book,
                  label: "Ayats Learned",
                  value: "286",
                  accentColor: Colors.green.shade400,
                ),
                SizedBox(height: 10),
                _buildResponsiveStatCard(
                  context: context,
                  icon: Icons.emoji_events,
                  label: "Badges",
                  value: "12",
                  accentColor: Newcolors.green400,
                ),
                SizedBox(height: 10),
                _buildResponsiveStatCard(
                  context: context,
                  icon: Icons.trending_up,
                  label: "Global Rank",
                  value: "#47",
                  accentColor: Newcolors.green900,
                ),
              ],
            )
          else
            // Large Screen: Grid Layout
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _buildResponsiveStatCard(
                        context: context,
                        icon: Icons.menu_book,
                        label: "Ayats Learned",
                        value: "286",
                        accentColor: Colors.green.shade400,
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: _buildResponsiveStatCard(
                        context: context,
                        icon: Icons.emoji_events,
                        label: "Badges",
                        value: "12",
                        accentColor: Newcolors.green400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 12),
                _buildResponsiveStatCard(
                  context: context,
                  icon: Icons.trending_up,
                  label: "Global Rank",
                  value: "#47",
                  accentColor: Newcolors.green900,
                ),
              ],
            ),
        ],
      ),
    );
  }

  // 🔥 FULLY RESPONSIVE STAT CARD
  Widget _buildResponsiveStatCard({
    required BuildContext context,
    required IconData icon,
    required String label,
    required String value,
    required Color accentColor,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isSmallScreen = screenWidth < 400;

    return Container(
      height: isSmallScreen ? 65 : 70,
      padding: EdgeInsets.symmetric(
        horizontal: isSmallScreen ? 12 : 16,
        vertical: isSmallScreen ? 10 : 12,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.92),
            accentColor.withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(isSmallScreen ? 14 : 16),
        border: Border.all(
          color: accentColor.withOpacity(0.3),
          width: isSmallScreen ? 1 : 1.2,
        ),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.25),
            blurRadius: isSmallScreen ? 10 : 12,
            offset: Offset(0, isSmallScreen ? 3 : 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Icon
          Container(
            padding: EdgeInsets.all(isSmallScreen ? 6 : 8),
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.18),
              shape: BoxShape.circle,
              border: Border.all(color: accentColor.withOpacity(0.35)),
            ),
            child: Icon(
              icon,
              color: accentColor,
              size: isSmallScreen ? 18 : 20,
            ),
          ),

          // Text - Right Aligned
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  FittedBox(
                    child: Text(
                      value,
                      style: TextStyle(
                        fontSize: isSmallScreen ? 18 : 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                        height: 1.1,
                      ),
                    ),
                  ),
                  SizedBox(height: isSmallScreen ? 1 : 2),
                  FittedBox(
                    child: Text(
                      label,
                      style: TextStyle(
                        fontSize: isSmallScreen ? 11 : 12,
                        color: Colors.grey[600],
                        fontWeight: FontWeight.w500,
                        height: 1.2,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ✅ SIMPLE STAT CARD - NO ANIMATION
  Widget _buildStatCard(
    IconData icon,
    String label,
    String value,
    Color accentColor,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white.withOpacity(0.92),
            accentColor.withOpacity(0.08),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: accentColor.withOpacity(0.3), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.25),
            blurRadius: 12,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: accentColor.withOpacity(0.18),
              shape: BoxShape.circle,
              border: Border.all(color: accentColor.withOpacity(0.35)),
            ),
            child: Icon(icon, color: accentColor, size: 20),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  value,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ✅ SIMPLE LOGOUT BUTTON - NO ANIMATION
  Widget _buildLogoutButton(Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => Login(role: "student")),
            (route) => false,
          );
        },
        child: Container(
          height: size.height * 0.06,
          width: size.width * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.2),
                blurRadius: 12,
                offset: Offset(0, 6),
              ),
            ],
            border: Border.all(color: Colors.red, width: 2),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout_outlined, color: Colors.red, size: 22),
              SizedBox(width: 12),
              Text(
                "Logout",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
