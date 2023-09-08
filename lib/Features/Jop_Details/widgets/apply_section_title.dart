import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';

class ApplySectionTitle extends StatelessWidget {
  const ApplySectionTitle({
    super.key,
    required this.title,
    required this.subTitle,
    this.titleColor,
    this.subTitleColor,
  });
  final String title;
  final String subTitle;
  final Color? titleColor;
  final Color? subTitleColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppFontsStyles.textstyle20.copyWith(
              color: titleColor ?? AppColors.appNeutralColors900,
              fontFamily: textFamilyMedium),
        ),
        const SizedBox(
          height: 4,
        ),
        CustomText14(
          title: subTitle,
          titleColor: subTitleColor ?? AppColors.appNeutralColors500,
        ),
      ],
    );
  }
}
