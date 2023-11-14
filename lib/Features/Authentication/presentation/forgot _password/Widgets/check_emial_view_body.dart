import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_state_page.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/functions/open_gmail_app.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/forgot%20_password/views/reset_password_view.dart';

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
          const CustomStatepage(
            stateImage: AppImages.checkEmail,
            statetitle: "Check your Email",
            stateSubtitle:
                "We have sent a reset password to your email address",
            spacebetweent: 12,
          ),
          const Spacer(),
          CustomButton(
              onPressed: () async {
                // await openGmail();
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
