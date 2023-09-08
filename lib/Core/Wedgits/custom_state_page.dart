import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';

class CustomStatepage extends StatelessWidget {
  const CustomStatepage({
    super.key,
    required this.stateImage,
    required this.statetitle,
    required this.stateSubtitle,
    this.tilteStyle,
    this.subTitleStyle, this.spacebetweent,
  });
  final String stateImage;
  final String statetitle;
  final String stateSubtitle;
  final TextStyle? tilteStyle;
  final TextStyle? subTitleStyle;
  final double? spacebetweent;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(stateImage),
        const SizedBox(
          height: 24,
        ),
        PageInitialinfo(
          pagegole: statetitle,
          pagegoledefination: stateSubtitle,
          textAlign: TextAlign.center,
          pagegoleStyle: AppFontsStyles.textstyle24.copyWith(
            fontFamily: textFamilyMedium,
            color: AppColors.appNeutralColors900,
            
          ),
          sutptitleStyle: subTitleStyle,
          spacebetween: spacebetweent,
        )
      ],
    );
  }
}
