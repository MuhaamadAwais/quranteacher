import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Availabilityydesign extends StatefulWidget {
  //final String title;
  final Function(String) onTimeSlotSelected;

  const Availabilityydesign({super.key, required this.onTimeSlotSelected});

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
      //print(selectedTime);
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedTime = label;
          });
          widget.onTimeSlotSelected(selectedTime);
        },
        child: Container(
          width: width * 0.38,
          height: height * 0.06,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: isSelected
                ? AppColors.toplast
                : AppColors.switchBackground.withOpacity(0.25),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 18,
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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
                        color: AppColors.toplast.withOpacity(0.25),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.access_time,
                          color: AppColors.toplast,
                          size: 24,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      "Availability",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
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
                  children: [timeContainer("Evening"), timeContainer("Night")],
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
