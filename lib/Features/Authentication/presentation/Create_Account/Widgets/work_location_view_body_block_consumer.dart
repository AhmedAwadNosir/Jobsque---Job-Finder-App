import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Views/sucess_account_ilstration.dart';
import 'package:jobsque_jobfinder/Features/Authentication/presentation/Create_Account/Widgets/work_location_view_body.dart';

import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/edit_profile_data/edit_profile_data_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ignore: must_be_immutable
class WorkLocationViewBodyBlocConsumer extends StatelessWidget {
  WorkLocationViewBodyBlocConsumer({
    super.key,
    this.userName,
    this.email,
    this.password,
    this.jopTitle,
    this.registerMethode,
  });
  String? userName;
  String? email;
  List<String>? jopTitle;
  String? registerMethode;
  String? password;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileDataCubit, EditProfileDataState>(
      listener: (context, state) {
        if (state is EditProfileDataFailure) {
          showSnackBar(state.errorMessage, context);
        }
        if (state is EditProfileDataSuccess) {
          showSnackBar("Registration complete seccessfully", context);
          Navigator.pushReplacementNamed(context, SuccessAcountIlstrationView.id);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
            inAsyncCall: state is EditProfileDataLoading ? true : false,
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
