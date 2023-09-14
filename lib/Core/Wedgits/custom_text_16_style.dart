import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomText16Style extends StatelessWidget {
  const CustomText16Style({
    super.key,
    required this.title,
    this.style,
    this.color, this.fontfamily,
  });
  final String title;
  final TextStyle? style;
  final Color? color;
  final String? fontfamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: style ??
          AppFontsStyles.textstyle16.copyWith(
              fontFamily:fontfamily?? textFamilyMedium,
              color: color ?? AppColors.appNeutralColors900),
    );
  }
}
