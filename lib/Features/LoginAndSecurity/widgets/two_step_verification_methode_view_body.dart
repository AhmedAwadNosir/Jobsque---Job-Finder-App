import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_dorp_down_button_form_field.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_send_code_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/custom_security_option.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class TwoStepVerificationMethodeViewBody extends StatelessWidget {
  const TwoStepVerificationMethodeViewBody({super.key});

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
          CustomDorpDownButtonFormField(
              title: "Select a verification method",
              
              itemsList: const [
                "Telephone number (SMS)",
                "Google account",
                "Facebook account"
              ],
              initialValue: "Telephone number (SMS)"),
          const SizedBox(height: 16),
          const CustomText14(
            title:
                "Note : Turning this feature will sign you out anywhere you’re currently signed in. We will then require you to enter a verification code the first time you sign with a new device or Joby mobile application.",
            fontFamily: textFamilyRegular,
            titleColor: AppColors.appNeutralColors500,
          ),
          const Spacer(),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, TwoStepVerificationSendCodeView.id);
              },
              buttonName: "Next"),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
