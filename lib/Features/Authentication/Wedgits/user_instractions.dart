import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Utils/app_fonts_styles.dart';

class User_Instractions extends StatelessWidget {
  const User_Instractions({
    super.key,
    required this.userQution,
    required this.userDestenation,
  });
  final String userQution;
  final String userDestenation;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          userQution,
          style: AppFontsStyles.textstyle14.copyWith(
              color: const Color(AppColors.appNeutralColors400),
              fontFamily: textFamilyMedium),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          userDestenation,
          style: AppFontsStyles.textstyle14.copyWith(
              color: const Color(AppColors.appPrimaryColors500),
              fontFamily: textFamilyMedium),
        ),
      ],
    );
  }
}
