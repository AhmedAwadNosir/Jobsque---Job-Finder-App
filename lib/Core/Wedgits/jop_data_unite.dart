import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';

class JopDataUnite extends StatelessWidget {
  const JopDataUnite({
    super.key,
    required this.jopComunicationImage,
    required this.jopTitle,
    required this.optionICon,
    required this.jopComunicationName,
    this.titleColor,
    this.subTitleColor,
    this.iconColor,
    this.onTap, this.iconSize,
  });
  final String jopComunicationImage;
  final String jopTitle;
  final String jopComunicationName;
  final IconData optionICon;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? iconColor;
  final void Function()? onTap;
  final double? iconSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(jopComunicationImage),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              jopTitle,
              style: AppFontsStyles.textstyle18.copyWith(
                fontFamily: textFamilyMedium,
                color: titleColor ?? AppColors.appNeutralColors900,
              ),
            ),
            const SizedBox(height: 4),
            CustomText12(
              text: jopComunicationName,
              color: subTitleColor ?? AppColors.appNeutralColors700,
            )
          ],
        ),
        const Spacer(),
        GestureDetector(
            onTap: onTap,
            child: Icon(
              size: iconSize,
              optionICon,
              color: iconColor,
            ))
      ],
    );
  }
}
