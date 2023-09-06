import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class JopDetails extends StatelessWidget {
  const JopDetails({
    super.key,
    required this.title,
    required this.subtitel,
    this.titleColor,
    this.subtitleColor,
    this.crossAxisAlignment, this.titleStyle,
  });

  final String title;
  final String subtitel;
  final Color? titleColor;
  final Color? subtitleColor;
  final CrossAxisAlignment? crossAxisAlignment;
  final TextStyle? titleStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:titleStyle?? AppFontsStyles.textstyle18.copyWith(
              fontFamily: textFamilyMedium,
              color: titleColor ?? AppColors.appNeutralColors900),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subtitel,
          style: AppFontsStyles.textstyle12.copyWith(
            fontFamily: textFamilyMedium,
            color: subtitleColor ?? AppColors.appNeutralColors700,
          ),
        ),
      ],
    );
  }
}
