import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Assignworkcard extends StatefulWidget {
  const Assignworkcard({super.key});

  @override
  State<Assignworkcard> createState() => _AssignworkcardState();
}

class _AssignworkcardState extends State<Assignworkcard> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    bool check = false;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.8,
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Homework Title",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: AppColors.switchBackground,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: AppColors.toplast,
                              width: 2,
                            ),
                          ),
                          border: InputBorder.none,
                          hint: Text(
                            " e.g, Memorize Surah Al-Mulk",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // describtion
                  Text(
                    "Subject",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: AppColors.switchBackground,
                              width: 2,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                              color: AppColors.toplast,
                              width: 2,
                            ),
                          ),
                          border: InputBorder.none,
                          hint: Text(
                            " Quran Memorization",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ),
                      ),
                    ),
                  ),

                  Text(
                    "Subject",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: width,
                    height: height * 0.12,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.switchBackground,
                            width: 2,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: AppColors.toplast,
                            width: 2,
                          ),
                        ),
                        border: InputBorder.none,
                        hint: Text(
                          " Provide detailed instructions...",
                          style: TextStyle(color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Date"),
                          Container(
                            width: width * 0.4,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.switchBackground.withOpacity(
                                0.25,
                              ),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: AppColors.switchBackground,
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: AppColors.toplast,
                                      width: 2,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.calendar_month_outlined,
                                  ),
                                  hint: Text("mm/dd/yyyy"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Point"),
                          Container(
                            width: width * 0.4,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.switchBackground.withOpacity(
                                0.25,
                              ),
                            ),
                            child: Center(
                              child: TextField(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: AppColors.switchBackground,
                                      width: 2,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: AppColors.toplast,
                                      width: 2,
                                    ),
                                  ),
                                  border: InputBorder.none,
                                  hint: Text("point"),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  Text(
                    "Assign To",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Checkbox(
                            value: check,
                            onChanged: (value) {
                              check = value!;
                            },
                          ),
                          Text(
                            "All Students",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            "Beginner Group",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Container(
                    width: width,
                    height: height * 0.07,
                    decoration: BoxDecoration(
                      color: AppColors.switchBackground.withOpacity(0.25),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            "Advanced Group",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
