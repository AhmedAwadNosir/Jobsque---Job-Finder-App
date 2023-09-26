import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class CustomToggleButtonChild extends StatelessWidget {
  const CustomToggleButtonChild({
    super.key,
    required this.workNature,
    required this.isSelected,
  });
  final String workNature;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        color: isSelected
            ? AppColors.appPrimaryColors900
            : AppColors.appNeutralColors300,
        borderRadius: BorderRadius.circular(100),
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      alignment: Alignment.center,
      child: Text(
        workNature,
        style: AppFontsStyles.textstyle14.copyWith(
          fontFamily: textFamilyMedium,
          color: isSelected ? Colors.white : AppColors.appNeutralColors500,
        ),
      ),
    );
  }
}
