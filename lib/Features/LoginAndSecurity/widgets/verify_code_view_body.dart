import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_text_16_style.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/widgets/verify_code_text_field.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class VerifyCodeViewBody extends StatelessWidget {
  const VerifyCodeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 36),
          const CustomText16Style(title: "Enter the 6 digit code"),
          const SizedBox(height: 12),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: RichText(
              text: TextSpan(
                style: AppFontsStyles.textstyle14.copyWith(
                    color: AppColors.appNeutralColors500, height: 1.4),
                text:
                    "Please confirm your account by entering the authorization code sen to ",
                children: [
                  TextSpan(
                      text: "****-****-7234",
                      style: AppFontsStyles.textstyle14
                          .copyWith(color: AppColors.appNeutralColors900))
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                VerifyCodeTextField(isFirst: true, isLast: false),
                VerifyCodeTextField(isFirst: false, isLast: false),
                VerifyCodeTextField(isFirst: false, isLast: false),
                VerifyCodeTextField(isFirst: false, isLast: false),
                VerifyCodeTextField(isFirst: false, isLast: false),
                VerifyCodeTextField(isFirst: false, isLast: true),
              ],
            ),
          ),
          const Spacer(),
          CustomButton(onPressed: () {}, buttonName: "Verify"),
          const SizedBox(height: 9),
        ],
      ),
    );
  }
}


