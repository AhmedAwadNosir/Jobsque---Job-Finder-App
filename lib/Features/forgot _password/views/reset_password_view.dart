import 'package:flutter/material.dart';

import '../Widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  static const id = "reset password";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: ResetPasswordViewBody()),
    );
  }
}
