import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_network_company_image.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text12.dart';

class JopDataUnite extends StatelessWidget {
  const JopDataUnite({
    super.key,
    required this.companyImage,
    required this.jopTitle,
    required this.optionICon,
    required this.jopComunicationName,
    this.titleColor,
    this.subTitleColor,
    this.iconColor,
    this.onTap,
    this.iconSize,
    this.jopTitleWidth,
  });
  final String companyImage;
  final String jopTitle;
  final String jopComunicationName;
  final IconData optionICon;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? iconColor;
  final void Function()? onTap;
  final double? iconSize;
  final double? jopTitleWidth;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5.5),
          child: CustomNetworkCompanyImage(
            companyImage: companyImage,
          ),
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: jopTitleWidth ?? MediaQuery.of(context).size.width * 0.65,
              child: Text(
                overflow: TextOverflow.visible,
                jopTitle,
                style: AppFontsStyles.textstyle18.copyWith(
                  fontFamily: textFamilyMedium,
                  color: titleColor ?? AppColors.appNeutralColors900,
                ),
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
