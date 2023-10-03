import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'edit_profile_data_state.dart';

class EditProfileDataCubit extends Cubit<EditProfileDataState> {
  EditProfileDataCubit(this.completeProfileRepoImpl)
      : super(EditProfileDataInitial());
  final CompleteProfileRepoImpl completeProfileRepoImpl;
  Future<void> editProfileData(
      {required ProfileDataModel profileDataModel}) async {
    emit(EditProfileDataLoading());
    var reslut = await completeProfileRepoImpl.editProfileData(
        profileDataModel: profileDataModel);
    reslut.fold((failure) {
      emit(EditProfileDataFailure(errorMessage: failure.errorMessage));
    }, (data) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      log(data.education ?? "");
      data.bio != "null" ? await prefs.setString(userBiokey, data.bio!) : null;
      data.address != "null"
          ? await prefs.setString(userAddresskey, data.address!)
          : null;
      data.mobile != "null"
          ? await prefs.setString(userMobilekey, data.mobile!)
          : null;
      data.education != "null"
          ? await prefs.setString(userEducationKey, data.education!)
          : null;
      data.exceprience != "null"
          ? await prefs.setString(userExperincekey, data.exceprience!)
          : null;
      emit(EditProfileDataSuccess(profileDataModel: data));
    });
  }
}
