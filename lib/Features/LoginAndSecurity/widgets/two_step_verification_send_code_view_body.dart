import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_password_text_form_field_section.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text14.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_field_phone_number.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/verify_code_view.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class TwoStepVerificationSendCodeViewBody extends StatelessWidget {
  const TwoStepVerificationSendCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),
          const CustomText16Style(title: "Add phone number"),
          const CustomText14(
            title: "We will send a verification code to this number",
            titleColor: AppColors.appNeutralColors500,
            fontFamily: textFamilyRegular,
          ),
          const SizedBox(height: 16),
          const CustomPhoneNumberTextField(),
          const SizedBox(height: 20),
          const CustomPasswordTextFieldSection(
            title: "Enter your password",
            prefixICon: Icon(
              Iconsax.lock,
              color: AppColors.appNeutralColors400,
              size: 20,
            ),
            suffixIcon: Iconsax.eye_slash,
          ),
          const Spacer(),
          CustomButton(
              onPressed: () {
                Navigator.pushNamed(context, VerifyCodeView.id);
              },
              buttonName: "Send Code"),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}
