import 'package:flutter/material.dart';

import '../Widgets/forgot_password_view_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});
  static const id = "forgotPasswordView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ForgotPasswordViewBody()),
    );
  }
}
