import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Ratesconti extends StatefulWidget {
  const Ratesconti({super.key});

  @override
  State<Ratesconti> createState() => _RatescontiState();
}

bool ischanged = false;

class _RatescontiState extends State<Ratesconti> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          height: height * 0.12,
          width: width,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange.withOpacity(0.25),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.attach_money_outlined,
                      color: Colors.orange,
                      size: 25,
                    ),
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Teaching",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rate",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Text(
                      "Class",
                      style: TextStyle(
                        color: AppColors.switchBackground,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                Text(
                  "Individual",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Switch(
                  value: ischanged,
                  activeThumbColor: Colors.green,

                  thumbColor: WidgetStatePropertyAll(Colors.white),

                  onChanged: (value) {
                    setState(() {
                      ischanged = value;
                    });
                  },
                ),

                Text(
                  "Class",
                  style: TextStyle(
                    color: AppColors.backgroundStart,
                    fontWeight: FontWeight.bold,
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
