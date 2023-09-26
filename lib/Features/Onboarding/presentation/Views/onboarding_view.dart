import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Sign_IN/Views/sign_in_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/onboarding_view_body.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/functions/store_onboardin_info.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const id = "onboardingview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leftPart: const CustomAppLogo(),
        rightpart: GestureDetector(
          onTap: () async {
            await storeOnboardinInfo();
            Navigator.pushReplacementNamed(context, SignInView.id);
          },
          child: Text(
            "Skip",
            style: AppFontsStyles.textstyle16.copyWith(
              color: AppColors.appNeutralColors500,
            ),
          ),
        ),
      ),
      body: const OnboardingViewBody(),
    );
  }
}
