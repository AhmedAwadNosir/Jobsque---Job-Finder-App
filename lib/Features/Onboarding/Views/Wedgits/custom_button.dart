import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';

import '../../../../Core/Utils/app_colors.dart';

class CustomButton extends StatelessWidget {
   CustomButton({
    super.key,
    required this.onPressed,
    required this.buttonName,
   this.islastPage ,
  });
  final void Function()? onPressed;
  final String buttonName;
  bool? islastPage = false ;
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
          child: Text(
            islastPage!?"Get Started":buttonName,
            style: AppFontsStyles.textstyle16,
          ),
        ));
  }
}
