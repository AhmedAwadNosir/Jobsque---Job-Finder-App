import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Cubits/SignIn/sign_in_cubit.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Widgets/sign_in_view_body_block_consumer.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../Widgets/sign_in_view_body.dart';

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

