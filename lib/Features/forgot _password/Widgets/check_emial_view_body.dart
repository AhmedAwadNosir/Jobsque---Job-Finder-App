import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/reset_password_view.dart';

import '../../../Core/Utils/app_fonts_styles.dart';

class CheckEmialViewBody extends StatelessWidget {
  const CheckEmialViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 160,
          ),
          Image.asset(AppImages.checkEmail),
          const SizedBox(
            height: 24,
          ),
          const PageInitialinfo(
            spacebetween: 12,
            pagegoleStyle: AppFontsStyles.textstyle24,
            pagegole: "Check your Email",
            pagegoledefination:
                "We have sent a reset password to your email address",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, ResetPasswordView.id);
              },
              buttonName: "Open email app"),
          const SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }
}
