import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Create_Account/Widgets/work_location_view_body.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Cubits/Register/register_cubit.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class workLocationViewBodyBlocConsumer extends StatelessWidget {
  workLocationViewBodyBlocConsumer({
    super.key,
    this.userName,
    this.email,
    this.password,
    this.jopTitle,
    this.registerMethode,
  });
  String? userName;
  String? email;
  String? jopTitle;
  String? registerMethode;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterFailure) {
          showSnackBar(state.errorMessaage, context);
        }
        if (state is RegisterSuccess) {
          showSnackBar("Registration complete seccessfully", context);
          Navigator.pushNamed(context, SuccessAcountIlstrationView.id);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is RegisterLoading ? true : false,
            child: WorkLocatinViewBody(
              userName: userName,
              email: email,
              password: password,
              jopTitle: jopTitle,
              registerMethode: registerMethode,
            ));
      },
    );
  }
}
