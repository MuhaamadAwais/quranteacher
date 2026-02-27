import 'package:flutter/material.dart';

class Dashboardadmin extends StatefulWidget {
  const Dashboardadmin({super.key});

  @override
  State<Dashboardadmin> createState() => _DashboardadminState();
}

class _DashboardadminState extends State<Dashboardadmin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: Column(children: [])),
      ),
    );
  }
}
