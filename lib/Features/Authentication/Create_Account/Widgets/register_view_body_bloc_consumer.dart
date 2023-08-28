import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/register_view_body.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../../Cubits/Register/register_cubit.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit,RegisterState>(
      listener: (context, state) {
        if (state is RegisterFailure) {
          showSnackBar(state.errorMessaage, context);
        }
        if (state is RegisterSuccess) {
          showSnackBar("Registeration Completed", context);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state == RegisterLoading ? true : false,
            child: const RegisterViewBody());
      },
    );
  }
}
