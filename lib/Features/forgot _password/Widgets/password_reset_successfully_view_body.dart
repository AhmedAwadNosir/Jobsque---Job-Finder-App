import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Widgets/custom_button.dart';

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
          const CustomStatepage(
            stateImage: AppImages.passowrdresetsuccessfullly,
            statetitle: "Password changed    succesfully!",
            stateSubtitle:
                "Your password has been changed successfully, we will let you know if there are more problems with your account",
            spacebetweent: 12,
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
