import 'package:flutter/material.dart';

import '../Widgets/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const id = "signInView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SignInViewBody() ,
    );
  }
}
