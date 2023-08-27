import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_appbarr.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Widgets/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Widgets/custom_button.dart';
import 'package:jobsque_jobfinder/Features/forgot%20_password/views/password_reset_successfully_view.dart';

class ResetPasswordViewBody extends StatefulWidget {
  const ResetPasswordViewBody({super.key});

  @override
  State<ResetPasswordViewBody> createState() => _ResetPasswordViewBodyState();
}

class _ResetPasswordViewBodyState extends State<ResetPasswordViewBody> {
  late String password1 = '';
  late String password2 = '';
  bool changeHelperStyleColor1 = false;
  bool changeHelperStyleColor2 = false;
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.95,
            child: Form(
              key: formkey,
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
                    pagegole: "Create new password",
                    pagegoledefination:
                        "Set your new password so you can login and acces Jobsque",
                  ),
                  const SizedBox(
                    height: 44,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    prefixicon: const Icon(Iconsax.lock),
                    suffixicon: const Icon(Iconsax.eye_slash),
                    helperText: "Password must be at least 8 characters",
                    helperStyle: AppFontsStyles.textstyle16.copyWith(
                        color: changeHelperStyleColor1
                            ? AppColors.appSuccessColors500
                            : AppColors.appNeutralColors400),
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      setState(() {
                        password1 = value!;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        password1 = value!;
                      });
                    },
                    validator: (value) {
                      changeHelperStyleColor1 = true;
                      if (value!.length < 8) {
                        return 'Password must be at least 8 characters';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  CustomTextField(
                    hintText: "Password",
                    prefixicon: const Icon(Iconsax.lock),
                    suffixicon: const Icon(Iconsax.eye_slash),
                    helperText: "Both password must match",
                    helperStyle: AppFontsStyles.textstyle16.copyWith(
                        color: changeHelperStyleColor2
                            ? AppColors.appSuccessColors500
                            : AppColors.appNeutralColors400),
                    obscureText: true,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    onChanged: (value) {
                      setState(() {
                        password2 = value!;
                      });
                    },
                    onSaved: (value) {
                      setState(() {
                        password2 = value!;
                      });
                    },
                    validator: (value) {
                      changeHelperStyleColor2 = true;
                      if (value != password1) {
                        return 'Both password must match';
                      } else if (value == password1 &&
                          password1 == '' &&
                          value!.isNotEmpty) {
                        return 'Both password must match';
                      }
                      if (value!.isEmpty) {
                        changeHelperStyleColor2 = false;
                      }
                      return null;
                    },
                  ),
                  const Spacer(),
                  CustomButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          formkey.currentState!.save();
                          Navigator.pushNamed(
                              context, PasswordResetSuccessfullyView.id);
                        } else {
                          setState(() {
                            autovalidateMode = AutovalidateMode.always;
                          });
                        }
                      },
                      buttonName: "Reset Password",
                      buttonColor: AppColors.appPrimaryColors500),
                  const SizedBox(
                    height: 9,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
