import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Availabilityydesign extends StatefulWidget {
  const Availabilityydesign({super.key});

  @override
  State<Availabilityydesign> createState() => _AvailabilityydesignState();
}

class _AvailabilityydesignState extends State<Availabilityydesign> {
  String selectedTime = ""; // selected option

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    // Helper to create each time slot container
    Widget timeContainer(String label) {
      bool isSelected = selectedTime == label;

      return GestureDetector(
        onTap: () {
          setState(() {
            selectedTime = label;
          });
        },
        child: Container(
          width: width * 0.38,
          height: height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected
                ? const Color(0xFF006633)
                : AppColors.switchBackground.withOpacity(0.25),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // Header row
                Row(
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF006633).withOpacity(0.25),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.access_time,
                          color: const Color(0xFF006633),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Availability",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),

                // First row: Morning & Afternoon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    timeContainer("Morning"),
                    timeContainer("Afternoon"),
                  ],
                ),
                const SizedBox(height: 10),

                // Second row: Evening & Night
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    timeContainer("Evening"),
                    timeContainer("Night"),
                  ],
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}