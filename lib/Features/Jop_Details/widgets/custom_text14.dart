import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomText14 extends StatelessWidget {
  const CustomText14({
    super.key,
    required this.title, this.titleColor,
  });
  final String title;
  final Color? titleColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppFontsStyles.textstyle14.copyWith(
        fontFamily: textFamilyMedium,
        color:titleColor?? AppColors.appNeutralColors900,
      ),
    );
  }
}
