import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/register_view_body_bloc_consumer.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Cubits/Register/register_cubit.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  static const id = "registerview";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => RegisterCubit(),
      child: const RegisterViewBodyBlocConsumer(),
    ));
  }
}

