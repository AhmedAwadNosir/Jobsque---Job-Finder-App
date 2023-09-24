import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/Custom_app_Barr.dart';
import 'package:jobsque_jobfinder/Core/Wedgits/custom_app_logo.dart';
import 'package:jobsque_jobfinder/Core/cubits/SignIn/sign_in_cubit.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Widgets/sign_in_view_body_block_consumer.dart';


class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const id = "signInView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        rightpart: CustomAppLogo(),
        leftPart: SizedBox(),
      ),
      body: BlocProvider(
        create: (context) => SignInCubit(),
        child: const SignInViewBodyBlockConsumer(),
      ),
    );
  }
}
