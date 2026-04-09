import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class TopicContentWidget extends StatefulWidget {
  final double widthfield;
  final double heightfield;
  final double heighttextfield;
  final IconData iconfields;
  final String titlefield;
  final String hintfield;
  final Color iconsColor;
  final Color contclickcolor;

  const TopicContentWidget({
    super.key,
    required this.widthfield,
    required this.heightfield,
    required this.iconfields,
    required this.titlefield,
    required this.heighttextfield,
    required this.hintfield,
    required this.iconsColor,
    required this.contclickcolor,
  });

  @override
  State<TopicContentWidget> createState() => _TopicContentWidgetState();
}

class _TopicContentWidgetState extends State<TopicContentWidget> {
  FocusNode focusNode = FocusNode();
  bool isFocused = false;

  @override
  void initState() {
    super.initState();

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          width: widget.widthfield,
          height: widget.heightfield,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: isFocused ? widget.contclickcolor : Colors.transparent,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(widget.iconfields, color: widget.iconsColor, size: 24),
                    const SizedBox(width: 5),
                    Text(
                      widget.titlefield,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                Container(
                  width: widget.widthfield,
                  height: widget.heighttextfield,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.switchBackground.withOpacity(0.25),
                    border: Border.all(
                      color: isFocused
                          ? widget.contclickcolor
                          : Colors.transparent,
                      width: 2,
                    ),
                  ),
                  child: TextField(
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      hintText: widget.hintfield,
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                    ),
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
