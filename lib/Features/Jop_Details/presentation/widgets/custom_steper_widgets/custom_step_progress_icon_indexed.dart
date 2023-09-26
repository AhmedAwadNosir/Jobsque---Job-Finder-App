import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';


class CustomStepProgressIconIndexed extends StatelessWidget {
  const CustomStepProgressIconIndexed({
    super.key,
    required this.isActiveIcon,
    required this.iconIndex,
  });

  final bool isActiveIcon;
  final int iconIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(

            /// change the border color if is active
            color: isActiveIcon
                ? AppColors.appPrimaryColors500
                : AppColors.appNeutralColors400),
        color: Colors.white,
      ),
      child: SizedBox(
        width: 20,
        height: 20,
        child: Text(
          '$iconIndex',
          textAlign: TextAlign.center,
          style: AppFontsStyles.textstyle16.copyWith(
            fontFamily: textFamilyMedium,
            color:
                isActiveIcon ? AppColors.appPrimaryColors500 : AppColors.appNeutralColors400,
          ),
        ),
      ),
    );
  }
}
