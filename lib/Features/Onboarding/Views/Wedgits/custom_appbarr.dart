import 'package:flutter/material.dart';

import '../../../../Core/Utils/app_colors.dart';
import '../../../../Core/Utils/app_fonts_styles.dart';
import '../../../../Core/Utils/app_images.dart';

class CustomAppBarr extends StatelessWidget {
  const CustomAppBarr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AppImages.appPLogo,
            width: 81,
            height: 19,
          ),
          Text(
            "Skip",
            style: AppFontsStyles.textstyle16.copyWith(
              color: const Color(AppColors.appNeutralColors500),
            ),
          )
        ],
      ),
    );
  }
}
