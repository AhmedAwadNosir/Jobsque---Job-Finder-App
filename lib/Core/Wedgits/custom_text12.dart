import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomText12 extends StatelessWidget {
  const CustomText12({
    super.key,
    required this.text,
    this.color,
    this.fontFamily,
  });

  final String text;
  final Color? color;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      style: AppFontsStyles.textstyle12.copyWith(
          color: color ?? AppColors.appNeutralColors600,
          fontFamily: fontFamily ?? textFamilyRegular),
    );
  }
}
