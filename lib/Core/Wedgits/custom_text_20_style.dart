import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomText20Style extends StatelessWidget {
  const CustomText20Style({
    super.key,
    required this.title, this.color, this.fontFamily,
  });

  final String title;
  final Color? color;
  final String? fontFamily;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppFontsStyles.textstyle20.copyWith(
          fontFamily:fontFamily?? textFamilyMedium, color:color?? AppColors.appNeutralColors900),
    );
  }
}