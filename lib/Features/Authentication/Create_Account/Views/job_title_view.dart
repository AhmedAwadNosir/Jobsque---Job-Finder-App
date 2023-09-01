import 'package:flutter/material.dart';

import '../Widgets/job_tittle_view_body.dart';

class JobTitleView extends StatelessWidget {
  JobTitleView({
    super.key,
    this.userName,
    this.email,
    this.registerMethode,
    this.password,
  });
  static const id = "jobtitleview";
  String? userName;
  String? email;
  String? registerMethode;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: JobTittleViewBody(
        userName: userName,
        email: email,
        password: password,
        registerMethode: registerMethode,
      )),
    );
  }
}
