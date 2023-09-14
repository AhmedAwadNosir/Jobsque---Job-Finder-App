import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomSectionBar extends StatelessWidget {
  const CustomSectionBar({
    super.key,
    required this.text,
    this.textAlign, this.textStyle,
  });
  final String text;
  final TextAlign? textAlign;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appNeutralColors200,
      height: 36,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 24),
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.start,
        style:textStyle?? AppFontsStyles.textstyle14.copyWith(
            fontFamily: textFamilyMedium, color: AppColors.appNeutralColors500),
      ),
    );
  }
}
