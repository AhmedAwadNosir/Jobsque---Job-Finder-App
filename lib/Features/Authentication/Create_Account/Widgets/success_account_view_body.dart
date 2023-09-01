import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';

class SuccessAccountIlsrationViewBody extends StatelessWidget {
  const SuccessAccountIlsrationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 97,
          ),
          Image.asset(AppImages.successaccount),
          const SizedBox(
            height: 24,
          ),
          const PageInitialinfo(
            pagegoleStyle: AppFontsStyles.textstyle24,
            pagegole: "Your account has been set up!",
            pagegoledefination:
                "We have customized feeds according to your preferences",
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, SignInView.id);
              },
              buttonName: "Get Started"),
          const SizedBox(
            height: 9,
          ),
        ],
      ),
    );
  }
}
