import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';

class PasswordResetSuccessfullyViewBody extends StatelessWidget {
  const PasswordResetSuccessfullyViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 160,
          ),
          Image.asset(AppImages.passowrdresetsuccessfullly),
          const SizedBox(
            height: 24,
          ),
          const PageInitialinfo(
            spacebetween: 12,
            pagegoleStyle: AppFontsStyles.textstyle24,
            pagegole: "Password changed succesfully!",
            pagegoledefination:
                "Your password has been changed successfully, we will let you know if there are more problems with your account",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(onPressed: () {}, buttonName: "Open email app"),
          const SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }
}
