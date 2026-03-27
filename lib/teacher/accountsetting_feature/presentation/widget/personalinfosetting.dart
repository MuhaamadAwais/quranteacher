import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Personalinfosetting extends StatelessWidget {
  const Personalinfosetting({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: width,
        height: height * 0.65,
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
                          color: AppColors.startgreen,
                        ),
                        child: Center(
                          child: Icon(
                            size: 35,
                            Icons.person_2_outlined,
                            color: AppColors.textWhite,
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Personal Information",
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
                    "Full Name",
                    Icons: Icons.person_2_outlined,
                    "Enter the name",
                  ),
                  SizedBox(height: 5),
                  perosnal(
                    width,
                    height * 0.075,
                    "Email Address",
                    Icons: Icons.email_outlined,
                    "Enter the email",
                  ),

                  SizedBox(height: 5),
                  perosnal(
                    width,
                    height * 0.075,
                    "Phone Number",
                    "Enter the phoneno",
                    Icons: Icons.phone_outlined,
                  ),
                  SizedBox(height: 5),
                  perosnal(
                    width,
                    height * 0.075,
                    "Location",
                    "Enter the Location",
                    Icons: Icons.location_on_outlined,
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
      Text(
        propertyname,
        style: TextStyle(fontSize: 20, color: AppColors.switchBackground),
      ),

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

            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
          ),
        ),
      ),
    ],
  );
}
