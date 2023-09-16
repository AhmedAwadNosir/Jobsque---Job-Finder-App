import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_password_text_form_field_section.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

class ChangePasswordView extends StatelessWidget {
  const ChangePasswordView({super.key});
  static const id = "ChangePasswordView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: "Change password",
        paddingTop: 16,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(height: 44),
            const CustomPasswordTextFieldSection(
              title: "Enter your old password",
              prefixICon: Icon(
                Iconsax.lock,
                color: AppColors.appNeutralColors400,
                size: 20,
              ),
              suffixIcon: Iconsax.eye_slash,
            ),
            const SizedBox(height: 20),
            const CustomPasswordTextFieldSection(
              title: "Enter your new password",
              prefixICon: Icon(
                Iconsax.lock,
                color: AppColors.appNeutralColors400,
                size: 20,
              ),
              suffixIcon: Iconsax.eye_slash,
            ),
            const SizedBox(height: 20),
            const CustomPasswordTextFieldSection(
              title: "Confirm your new password",
              prefixICon: Icon(
                Iconsax.lock,
                color: AppColors.appNeutralColors400,
                size: 20,
              ),
              suffixIcon: Iconsax.eye_slash,
            ),
            const SizedBox(height: 20),
            const Spacer(),
            CustomButton(onPressed: () {}, buttonName: "Save"),
            const SizedBox(height: 9),
          ],
        ),
      ),
    );
  }
}
