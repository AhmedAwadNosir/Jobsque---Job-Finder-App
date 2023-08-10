import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

import '../../../../Core/Utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
  });
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 36, bottom: 25, left: 24, right: 24),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1000),
            ),
            minimumSize: const Size(327, 48),
            backgroundColor: const Color(AppColors.appPrimaryColors500),
          ),
          child: const Text(
            "Next",
            style: AppFontsStyles.textstyle16,
          ),
        ));
  }
}
