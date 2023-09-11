import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';

import '../Widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  static const id = "reset password";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        rightpart: CustomAppLogo(),
        paddingTop: 16,
      ),
      body: SafeArea(child: ResetPasswordViewBody()),
    );
  }
}
