import 'package:flutter/material.dart';

class Madhabconti extends StatefulWidget {
  final double height;
  final String title;
  final String hint;
  final IconData icon;
  const Madhabconti({
    super.key,
    required this.height,
    required this.title,
    required this.hint,
    required this.icon,
  });

  @override
  State<Madhabconti> createState() => _MadhabcontiState();
}

class _MadhabcontiState extends State<Madhabconti> {
  late FocusNode focusNode;
  bool isFocused = false;

  @override
  void initState() {
    super.initState();

    focusNode = FocusNode();

    focusNode.addListener(() {
      setState(() {
        isFocused = focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          height: isFocused ? widget.height + 10 : widget.height,
          transform: isFocused
              ? (Matrix4.identity()..scale(1.0, 1.02))
              : Matrix4.identity(),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            border: Border.all(
              color: isFocused ? Colors.green : Colors.transparent,
              width: 2,
            ),
            boxShadow: [
              if (isFocused)
                BoxShadow(
                  color: Colors.green.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 1,
                ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF006633).withOpacity(0.25),
                      ),
                      child: Icon(widget.icon, color: const Color(0xFF006633)),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      widget.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                TextField(
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    suffixIcon: RotatedBox(
                      quarterTurns: 3,
                      child: Icon(Icons.arrow_back_ios),
                    ),
                    border: InputBorder.none,
                    hintText: widget.hint,
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
