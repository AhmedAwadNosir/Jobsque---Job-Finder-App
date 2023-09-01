import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/work_location_view_body_block_consumer.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Cubits/Register/register_cubit.dart';

class WorkLocationView extends StatelessWidget {
  WorkLocationView(
      {super.key,
      this.userName,
      this.email,
      this.jopTitle,
      this.registerMethode,
      this.password});
  static const id = "Worklocationview";
  String? userName;
  String? email;
  String? jopTitle;
  String? registerMethode;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
        create: (context) => RegisterCubit(),
        child: workLocationViewBodyBlocConsumer(
          userName: userName,
          email: email,
          password: password,
          jopTitle: jopTitle,
          registerMethode: registerMethode,
        ),
      )),
    );
  }
}

