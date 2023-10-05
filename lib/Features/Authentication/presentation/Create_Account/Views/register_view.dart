import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/service_locator.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/register_view_body_blocconsumer.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/registerApi/register_api_cubit.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const id = "registerview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(
          paddingTop: 19,
          rightpart: CustomAppLogo(),
        ),
        body: SafeArea(
            child: BlocProvider(
          create: (context) => RegisterApiCubit(getIt.get<AuthRepoImpl>()),
          child: const RegisterViewBodyBlocConsumer(),
        )));
  }
}

