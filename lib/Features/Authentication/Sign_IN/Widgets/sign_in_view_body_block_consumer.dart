import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Sign_IN/Widgets/sign_in_view_body.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../Cubits/SignIn/sign_in_cubit.dart';
import '../../functions/show_snack_bar.dart';

class SignInViewBodyBlockConsumer extends StatelessWidget {
  const SignInViewBodyBlockConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInFailure) {
          showSnackBar(state.errorMessage, context);
        }
        if (state is SignInSuccess) {
          showSnackBar("Login is completed ", context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state == SignInLoading ? true : false,
            child: const SignInViewBody());
      },
    );
  }
}
