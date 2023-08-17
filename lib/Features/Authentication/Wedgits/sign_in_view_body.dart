import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_appbarr.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/user_auth_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Wedgits/custom_button.dart';

import 'authentication_option_styel.dart';
import 'login_basic_operation.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String userName;
  late String password;
  bool isButtonEnabled = false;
  String? userNameData='';
  String? passwordData='';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                const CustomAppBarr(
                  rightPart: CustomAppLogo(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 44),
                  child: PageInitialinfo(),
                ),
                CustomTextField(
                  hintText: 'Username',
                  prefixicon: const Icon(
                    Iconsax.user_square,
                  ),
                  obscureText: false,
                  autovalidateMode: autovalidateMode,
                  onChanged: (value) {
                    setState(() {
                      userNameData = value;
                      
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      userName = value!;
                    });
                  },
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Field is Required";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  hintText: "Password",
                  prefixicon: const Icon(Iconsax.lock),
                  suffixicon: const Icon(Iconsax.eye_slash),
                  obscureText: true,
                  autovalidateMode: autovalidateMode,
                  onChanged: (value) {
                    setState(() {
                      passwordData = value;
                    });
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return "Field is Required";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const LoginBasicOperation(),
                const SizedBox(
                  height: 173,
                ),
                const User_Instractions(
                  userDestenation: "Register",
                  userQution: "Dont’t have an account?",
                ),
                const SizedBox(
                  height: 24,
                ),
                CustomButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      log(isButtonEnabled.toString());
                      log(userNameData.toString());
                      log(passwordData.toString());
                      formkey.currentState!.save();
                    } else {
                      setState(() {
                        autovalidateMode = AutovalidateMode.always;
                      });
                    }
                  },
                  buttonName: "Login",
                  buttonColor:
                      (userNameData!.isNotEmpty && passwordData!.isNotEmpty)
                          ? AppColors.appPrimaryColors500
                          : AppColors.appNeutralColors300,
                ),
                const SizedBox(
                  height: 20,
                ),
                const UserAuthOptions(
                  OperationOption: "Or Login With Account",
                ),
                const SizedBox(
                  height: 24,
                ),
                const Row(
                  children: [
                    AuthOptionsStyls(
                        siteIcon: AppImages.appGoogle, siteName: "google"),
                    SizedBox(
                      width: 19,
                    ),
                    AuthOptionsStyls(
                        siteIcon: AppImages.appFacebook, siteName: "Facebook"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
