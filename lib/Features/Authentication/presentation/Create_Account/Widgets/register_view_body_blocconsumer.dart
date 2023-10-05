import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/job_title_view.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/register_view_body.dart';
import 'package:jobsque_jobfinder/Features/Authentication/states_manager/Cubits/registerApi/register_api_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterViewBodyBlocConsumer extends StatelessWidget {
  const RegisterViewBodyBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterApiCubit, RegisterApiState>(
      listener: (context, state) {
        if (state is RegisterApiFailure) {
          showSnackBar(state.errorMessage, context);
        }
        if (state is RegisterApiSuccess) {
          showSnackBar("Registraion Completed Successfuly", context);
          Navigator.pushReplacementNamed(context, JobTitleView.id);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is RegisterApiLoading ? true : false,
            child: const RegisterViewBody());
      },
    );
  }
}
