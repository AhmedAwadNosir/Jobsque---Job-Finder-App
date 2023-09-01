import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const id = "registerview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: RegisterViewBody());
  }
}
