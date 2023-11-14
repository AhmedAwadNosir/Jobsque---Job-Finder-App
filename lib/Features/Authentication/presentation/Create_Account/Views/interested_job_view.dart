import 'package:flutter/material.dart';

import '../Widgets/interested_job_view_body.dart';

// ignore: must_be_immutable
class InterstedJobView extends StatelessWidget {
  InterstedJobView({
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
          child: IntestedJobViewBody(
        userName: userName,
        email: email,
        password: password,
        registerMethode: registerMethode,
      )),
    );
  }
}
