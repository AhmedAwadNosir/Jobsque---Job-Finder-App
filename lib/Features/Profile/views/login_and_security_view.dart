import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Features/Profile/widgets/login_and_security_view_body.dart';

class LoginAndSecurityView extends StatelessWidget {
  const LoginAndSecurityView({super.key});
  static const id = "loginandsecurityview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Login and security",paddingTop: 16),
      body: LoginAndSecurityViewBody(),
    );
  }
}
