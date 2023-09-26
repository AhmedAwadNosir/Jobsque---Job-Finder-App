import 'package:flutter/material.dart';

import '../Widgets/password_reset_successfully_view_body.dart';

class PasswordResetSuccessfullyView extends StatelessWidget {
  const PasswordResetSuccessfullyView({super.key});
  static const id = "passowrd resset";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: PasswordResetSuccessfullyViewBody()),
    );
  }
}
