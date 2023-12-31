import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/edit_profile_data/edit_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/states_manager/fetch_profile_data/fetch_profile_data_cubit.dart';
import 'package:jobsque_jobfinder/Features/Onboarding/presentation/Widgets/custom_button.dart';

class EducationButtonBlocConsumer extends StatelessWidget {
  const EducationButtonBlocConsumer({super.key, this.education});
  final String? education;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<EditProfileDataCubit, EditProfileDataState>(
        listener: (context, state) {
      if (state is EditProfileDataSuccess) {
        BlocProvider.of<FetchProfileDataCubit>(context).fetchPorfileDataCubit();
        showSnackBar("your data has been saved Succesfully", context);
      }
      if (state is EditProfileDataFailure) {
        showSnackBar(state.errorMessage, context);
      }
    }, builder: (context, state) {
      return CustomButton(
          onPressed: () async {
            await BlocProvider.of<EditProfileDataCubit>(context)
                .editProfileData(
                    profileDataModel: ProfileDataModel(education: education));
          },
          buttonchild: state is EditProfileDataLoading
              ? const CircularProgressIndicator(color: Colors.white)
              : null,
          buttonName: "Save");
    });
  }
}
