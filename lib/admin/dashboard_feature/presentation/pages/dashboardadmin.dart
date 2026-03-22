import 'package:flutter/material.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/admindashboardcontwid.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/adminoperationwid.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/calculationconti.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/nameadminwid.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/recentactivitywid.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/userswid.dart';
import 'package:quranteacher/admin/dashboard_feature/presentation/widgets/todayoverwid.dart';

void main() {
  runApp(MaterialApp(home: Dashboardadmin()));
}

class Dashboardadmin extends StatefulWidget {
  const Dashboardadmin({super.key});

  @override
  State<Dashboardadmin> createState() => _DashboardadminState();
}

class _DashboardadminState extends State<Dashboardadmin>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeanimation;
  late Animation<double> _fadeanimation2;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _fadeanimation = Tween<double>(begin: 0.45, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceIn),
    );
    _fadeanimation2 = Tween<double>(begin: 0.95, end: 1.0).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.bounceIn),
    );
    _animationController.forward();
    _animationController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Admindashboardcontwid(),
                  Positioned(
                    left: 20,
                    right: 20,
                    top: 20,
                    child: Nameadminwid(),
                  ),
                  Positioned(
                    top: 110,
                    left: 20,
                    right: 20,
                    child: Adminoperationwid(
                      opacityanim: _fadeanimation,
                      maincontainer: _fadeanimation2,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Calculationconti(),
              SizedBox(height: 10),
              Todayoverwid(),
              SizedBox(height: 10),
              Recentactivitywid(),
              SizedBox(height: 10),
              Userswid(),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
