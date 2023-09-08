import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class ApplyCustomStepsLabel extends StatelessWidget {
  ApplyCustomStepsLabel(
      {super.key, required this.label, required this.isActive});
  final String label;
  bool isActive;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: AppFontsStyles.textstyle12.copyWith(
          color: isActive == true
              ? AppColors.appPrimaryColors500
              : AppColors.appNeutralColors900),
    );
  }
}
