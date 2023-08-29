import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Widgets/sign_in_view_body_block_consumer.dart';

import '../../Cubits/SignIn/sign_in_cubit.dart';
class SignInView extends StatelessWidget {
  const SignInView({super.key});
  static const id = "signInView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => SignInCubit(),
        child: const SignInViewBodyBlockConsumer(),
      ),
    );
  }
}

