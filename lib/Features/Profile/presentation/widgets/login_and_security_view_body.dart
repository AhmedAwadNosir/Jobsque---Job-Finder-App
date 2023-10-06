import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_colors.dart';
import 'package:jobsque_jobfinder/Core/Utils/app_fonts_styles.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_seaction_bar.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/change_password_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/email_adress_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/phone_number_view.dart';
import 'package:jobsque_jobfinder/Features/LoginAndSecurity/views/two_step_verification_view.dart';
import 'package:jobsque_jobfinder/Features/Profile/presentation/widgets/login_and_security.dart';

class LoginAndSecurityViewBody extends StatelessWidget {
  const LoginAndSecurityViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: SharedPreferencesUtil.getString(emailAdress),
      builder: (context, snapshot) {
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
                    value: snapshot.data,
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EmailAdressView(
                                userEmailAddress: snapshot.data!),
                          ));
                    },
                  ),
                  LoginAndSecuritySection(
                    title: "Phone number",
                    ontap: () {
                      Navigator.pushNamed(context, PhoneNumberView.id);
                    },
                  ),
                  LoginAndSecuritySection(
                    title: "Change password",
                    ontap: () {
                      Navigator.pushNamed(context, ChangePasswordView.id);
                    },
                  ),
                  LoginAndSecuritySection(
                    title: "Two-step verification",
                    value: "Non active",
                    ontap: () {
                      Navigator.pushNamed(context, TwoStepVerificationView.id);
                    },
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
      },
    );
  }
}
