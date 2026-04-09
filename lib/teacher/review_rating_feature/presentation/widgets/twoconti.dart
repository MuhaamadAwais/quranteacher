import 'package:flutter/material.dart';
import 'package:quranteacher/appcolors.dart';

class Twoconti extends StatelessWidget {
  const Twoconti({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _contides(width, height, Icons.trending_up, 0.2, "This Month"),
        _contides(width, height, Icons.chat_bubble_outline, 15, "New Reviews"),
      ],
    );
  }
}

Widget _contides(
  double width,
  double height,
  IconData iconsset,
  num valuesofper,
  String textbot,
) {
  return Container(
    width: width * 0.42,
    height: height * 0.1,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: AppColors.textWhite.withOpacity(0.25),
      border: Border.all(width: 1, color: AppColors.textWhite),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Icon(iconsset, color: AppColors.textWhite,size: 24,),
              SizedBox(width: 3),
              Text(
                valuesofper.toString(),
                style: TextStyle(
                  color: AppColors.textWhite,
                  fontWeight: FontWeight.normal,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          Text(
            textbot,
            style: TextStyle(
              color: AppColors.textWhite,
              fontWeight: FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ],
      ),
    ),
  );
}
