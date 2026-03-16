import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/teacher/accountsetting_feature/presentation/widget/personalinfosetting.dart';

class Certificatedetails extends StatelessWidget {
  const Certificatedetails({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.78,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.textWhite,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.islamicNavy,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.workspace_premium,
                            color: AppColors.textWhite,
                            size: 32,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Certificate Details",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  perosnal(
                    width,
                    height * 0.075,
                    "Certifcate Title *",
                    Icons: Icons.person_2_outlined,
                    "e.g,Iazah in quran recitatior",
                  ),
                  SizedBox(height: 5),
                  perosnal(
                    width,
                    height * 0.075,
                    "Issuing Organization *",
                    Icons: Icons.print,
                    "e.g, University",
                  ),

                  SizedBox(height: 5),
                  perosnal(
                    width,
                    height * 0.075,
                    "Issue Date",
                    Icons: Icons.calendar_month_outlined,
                    "----/--/--",
                  ),
                  SizedBox(height: 5),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),

                      SizedBox(height: 5),

                      Container(
                        width: width,
                        height: height * 0.2,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: AppColors.switchBackground.withOpacity(0.25),
                        ),
                        child: TextFormField(
                          maxLines: null,
                          minLines: 5,
                          keyboardType: TextInputType.multiline,
                          decoration: InputDecoration(
                            hintText:
                                "Brief description of the certification...",
                            hintStyle: TextStyle(color: Colors.grey),

                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none,
                            ),

                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.switchBackground.withOpacity(
                                  0.4,
                                ),
                                width: 1.5,
                              ),
                            ),

                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: AppColors.islamicGreen,
                                width: 2,
                              ),
                            ),

                            contentPadding: EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget perosnal(
    double width,
    double height,
    String propertyname,
    String hintname, {
    IconData? Icons,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(propertyname, style: TextStyle(fontSize: 20, color: Colors.black)),

        SizedBox(height: 5),
        Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.switchBackground.withOpacity(0.25),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: hintname,
              hintStyle: TextStyle(color: Colors.grey),

              prefixIcon: Icon(Icons, color: AppColors.switchBackground),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide.none,
              ),

              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.switchBackground.withOpacity(0.4),
                  width: 1.5,
                ),
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                  color: AppColors.switchBackground,
                  width: 2,
                ),
              ),

              contentPadding: EdgeInsets.symmetric(
                vertical: 18,
                horizontal: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
