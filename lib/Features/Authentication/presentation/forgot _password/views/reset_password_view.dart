import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/reset_password/reset_password_cubit.dart';

import '../Widgets/reset_password_view_body.dart';

class ResetPasswordView extends StatelessWidget {
  const ResetPasswordView({super.key});
  static const id = "reset password";
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
        rightpart: CustomAppLogo(),
        paddingTop: 16,
      ),
      body: SafeArea(
          child: BlocProvider(
        create: (context) => ResetPasswordCubit(
          getIt.get<AuthRepoImpl>()
        ),
        child: ResetPasswordViewBody(),
      )),
    );
  }
}
