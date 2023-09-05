import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title, this.style,
  });
  final String title;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style:style?? AppFontsStyles.textstyle16.copyWith(
          fontFamily: textFamilyMedium, color: AppColors.appNeutralColors900),
    );
  }
}
