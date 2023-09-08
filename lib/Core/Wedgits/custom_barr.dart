import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomBar extends StatelessWidget {
  const CustomBar({
    super.key,
    required this.leftPart,
    required this.centerPart,
    this.rightPart,
  });
  final IconData leftPart;
  final String centerPart;
  final Widget? rightPart;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            leftPart,
          ),
        ),
        Text(
          centerPart,
          style: AppFontsStyles.textstyle20.copyWith(
            fontFamily: textFamilyMedium,
            color: AppColors.appNeutralColors900,
          ),
        ),
        rightPart ?? Container()
      ],
    );
  }
}
