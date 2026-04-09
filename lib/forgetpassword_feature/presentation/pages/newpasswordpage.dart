import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';
import 'package:quranteacher/forgetpassword_feature/presentation/widgets/newpasswordcontiwidget.dart';

class Newpasswordpage extends StatelessWidget {
  final String role;
  const Newpasswordpage({super.key,required this.role});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: width * 0.3,
                      height: height * 0.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.toplast,
                      ),
                    ),
                    Container(
                      width: width * 0.3,
                      height: height * 0.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.toplast,
                      ),
                    ),

                    Container(
                      width: width * 0.3,
                      height: height * 0.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.toplast,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
                Newpasswordcontiwidget(role: role,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
