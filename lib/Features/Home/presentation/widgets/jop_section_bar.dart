import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class JopSectionBar extends StatelessWidget {
  const JopSectionBar({super.key, this.onTap, required this.jopslistname});
  final void Function()? onTap;
  final String jopslistname;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          jopslistname,
          style: AppFontsStyles.textstyle18.copyWith(
            fontFamily: textFamilyMedium,
            color: AppColors.appNeutralColors900,
          ),
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            "View all",
            style: AppFontsStyles.textstyle14.copyWith(
              fontFamily: textFamilyMedium,
              color: AppColors.appPrimaryColors500,
            ),
          ),
        ),
      ],
    );
  }
}
