import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/widgets/custom_text14.dart';

class ApplySectionTitle extends StatelessWidget {
  const ApplySectionTitle({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppFontsStyles.textstyle20.copyWith(
              color: AppColors.appNeutralColors900,
              fontFamily: textFamilyMedium),
        ),
        CustomText14(title: subTitle),
      ],
    );
  }
}
