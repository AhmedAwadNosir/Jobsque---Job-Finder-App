import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/login_and_security.dart';

class LoginAndSecurityViewBody extends StatelessWidget {
  const LoginAndSecurityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 32),
        CustomSectionBar(
          text: "Account access",
          textStyle: AppFontsStyles.textstyle16.copyWith(
              fontFamily: textFamilyMedium,
              color: AppColors.appNeutralColors500),
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              LoginAndSecuritySection(
                title: "Email address",
                value: "rafifdian12@gmail.com",
                ontap: () {},
              ),
              LoginAndSecuritySection(
                title: "Phone number",
                ontap: () {},
              ),
              LoginAndSecuritySection(
                title: "Change password",
                ontap: () {},
              ),
              LoginAndSecuritySection(
                title: "Two-step verification",
                value: "Non active",
                ontap: () {},
              ),
              LoginAndSecuritySection(
                title: "Face ID",
                ontap: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
