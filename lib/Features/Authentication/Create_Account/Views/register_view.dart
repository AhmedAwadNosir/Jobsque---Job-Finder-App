import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const id = "registerview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppBar(
          paddingTop: 19,
          rightpart: CustomAppLogo(),
        ),
        body: SafeArea(child: RegisterViewBody()));
  }
}
