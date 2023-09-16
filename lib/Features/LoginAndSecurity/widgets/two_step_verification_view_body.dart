import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/circle_icon_container.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_methode_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/custom_security_option.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class TwoStepVerificationViewBody extends StatelessWidget {
  const TwoStepVerificationViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 36),
          Container(
            decoration: BoxDecoration(
                border:
                    Border.all(width: 1, color: AppColors.appNeutralColors300),
                borderRadius: BorderRadius.circular(8)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
              child: CustomSecurityOption(
                optionName: "Secure your account with two-step verification",
                textStyle: AppFontsStyles.textstyle16.copyWith(
                  fontFamily: textFamilyMedium,
                  color: AppColors.appNeutralColors500,
                ),
                textWidth: 0.50,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleIconContainer(icon: Iconsax.lock),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.70,
                child: const CustomText14(
                  title:
                      "Two-step verification provides additional security by asking for a verification code every time you log in on another device.",
                  titleColor: AppColors.appNeutralColors500,
                  fontFamily: textFamilyRegular,
                ),
              )
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleIconContainer(icon: Iconsax.external_drive),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.70,
                child: const CustomText14(
                  title:
                      "Adding a phone number or using an authenticator will help keep your account safe from harm.",
                  titleColor: AppColors.appNeutralColors500,
                  fontFamily: textFamilyRegular,
                ),
              )
            ],
          ),
          const Spacer(),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, TwoStepVerificationMethodeView.id);
              },
              buttonName: "Next"),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
