import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Logout extends StatefulWidget {
  const Logout({super.key});

  @override
  State<Logout> createState() => _LogoutState();
}

class _LogoutState extends State<Logout> {
  Color bgcolor=AppColors.textWhite;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          setState(() {
            bgcolor=
          AppColors.destructive;
          });
        },
        child: Container(
          width: width,
          height: height * 0.07,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.textWhite,
            border: Border.all(color: AppColors.pink700, width: 1.5),
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.logout, color: AppColors.pink700),
              Text(
                "Logout",
                style: TextStyle(
                  color: AppColors.pink700,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
