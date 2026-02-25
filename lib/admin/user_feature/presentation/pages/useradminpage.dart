import 'package:flutter/material.dart';

class Useradminpage extends StatefulWidget {
  const Useradminpage({super.key});

  @override
  State<Useradminpage> createState() => _UseradminpageState();
}

class _UseradminpageState extends State<Useradminpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: Column(children: [])),
      ),
    );
  }
}
