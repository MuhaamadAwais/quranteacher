import 'package:flutter/material.dart';

class Contentadminpage extends StatefulWidget {
  const Contentadminpage({super.key});

  @override
  State<Contentadminpage> createState() => _ContentadminpageState();
}

class _ContentadminpageState extends State<Contentadminpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(child: Column(children: [])),
      ),
    );
  }
}
