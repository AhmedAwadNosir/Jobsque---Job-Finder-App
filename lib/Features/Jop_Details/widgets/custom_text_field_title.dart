import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

class CustomTextFieldTitle extends StatelessWidget {
  const CustomTextFieldTitle({
    super.key, required this.title, this.symbol,
  });
  final String title;
  final String? symbol;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
         title,
          style: AppFontsStyles.textstyle16
              .copyWith(color: AppColors.appNeutralColors900),
        ),

       symbol!=null? Text(
          symbol!,
          style: AppFontsStyles.textstyle16
              .copyWith(color: AppColors.appInDangerColors500),
        ):Container()
      ],
    );
  }
}
