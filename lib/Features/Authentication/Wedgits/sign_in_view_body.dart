import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_images.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_appbarr.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/custom_text_field.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/page_initail_info.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/user_auth_options.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Wedgits/user_instractions.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/Views/Wedgits/custom_button.dart';

import 'login_basic_operation.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  late FocusNode _focusNode1;
  bool isfocused1 = false;
  late FocusNode _focusNode2;
  bool isfocused2 = false;
  @override
  void initState() {
    _focusNode1 = FocusNode();
    _focusNode2 = FocusNode();
    _focusNode1.addListener(() {
      setState(() {
        if (_focusNode1.hasFocus) {
          isfocused1 = true;
          _focusNode2.unfocus();
          isfocused2 = false;
        } else if (_focusNode2.hasFocus) {
          isfocused2 = true;
          _focusNode1.unfocus();
          isfocused1 = false;
        }
      });
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _focusNode1.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
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
                focusNode: _focusNode1,
                isfocused: isfocused1,
                hintText: 'Username',
                prefixicon: Iconsax.user_square,
                obscureText: false,
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                focusNode: _focusNode2,
                isfocused: isfocused2,
                hintText: "Password",
                prefixicon: Iconsax.lock,
                suffixicon: Icons.visibility_off,
                obscureText: true,
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
              CustomButton(onPressed: () {}, buttonName: "Login"),
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
    );
  }
}

class AuthOptionsStyls extends StatelessWidget {
  const AuthOptionsStyls({
    super.key,
    required this.siteIcon,
    required this.siteName,
  });
  final String siteIcon;
  final String siteName;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 46,
        width: 154,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(AppColors.appNeutralColors300),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(siteIcon),
            const SizedBox(
              width: 8,
            ),
            Text(
              siteName,
              style: AppFontsStyles.textstyle14.copyWith(
                  fontFamily: textFamilyMedium, color: const Color(0xff363F5E)),
            )
          ],
        ));
  }
}
