import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';

class UserInstractions extends StatelessWidget {
  const UserInstractions({
    super.key,
    required this.userQution,
    required this.userDestenation,
    this.onTap,
  });
  final String userQution;
  final String userDestenation;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          userQution,
          style: AppFontsStyles.textstyle14.copyWith(
              color: AppColors.appNeutralColors400,
              fontFamily: textFamilyMedium),
        ),
        const SizedBox(
          width: 6,
        ),
        GestureDetector(
          onTap: onTap,
          child: Text(
            userDestenation,
            style: AppFontsStyles.textstyle14.copyWith(
                color: AppColors.appPrimaryColors500,
                fontFamily: textFamilyMedium),
          ),
        ),
      ],
    );
  }
}
