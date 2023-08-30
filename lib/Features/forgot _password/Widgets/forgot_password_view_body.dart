import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/check_emial_view.dart';

import '../../../Core/Utils/app_colors.dart';
import '../../../Core/Wedgits/custom_app_logo.dart';
import '../../../Core/Wedgits/custom_appbarr.dart';
import '../../Onboarding/Views/Widgets/custom_button.dart';
import '../../Authentication/Widgets/custom_text_field.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  late String email;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            CustomAppBarr(
              leftPart: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                padding: EdgeInsets.zero,
                alignment: Alignment.centerLeft,
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: Color(0xff292D32),
                ),
              ),
              rightPart: const CustomAppLogo(),
            ),
            const SizedBox(
              height: 44,
            ),
            const PageInitialinfo(
              spacebetween: 8,
              pagegole: "Reset Password",
              pagegoledefination:
                  "Enter the email address you used when you joined and we’ll send you instructions to reset your password.",
            ),
            const SizedBox(
              height: 40,
            ),
            CustomTextField(
              hintText: 'Enter your email',
              autovalidateMode: autovalidateMode,
              prefixicon: const Icon(
                Iconsax.sms,
              ),
              obscureText: false,
              onChanged: (value) {
                setState(() {
                  email = value!;
                });
              },
              onSaved: (value) {
                setState(() {
                  email = value!;
                });
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return "faild is required";
                }
                return null;
              },
            ),
            const Spacer(),
            UserInstractions(
              userDestenation: "login",
              onTap: () {
                Navigator.pop(context);
              },
              userQution: "You remember your password",
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                onPressed: () {
                  if (formkey.currentState!.validate()) {
                    formkey.currentState!.save();
                    Navigator.pushNamed(context, CheckEmialView.id);
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
                buttonName: "Request password reset",
                buttonColor: AppColors.appPrimaryColors500),
            const SizedBox(
              height: 9,
            )
          ],
        ),
      ),
    );
  }
}
