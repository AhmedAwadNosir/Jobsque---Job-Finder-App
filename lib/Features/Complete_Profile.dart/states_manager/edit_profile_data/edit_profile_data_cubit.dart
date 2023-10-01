import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:meta/meta.dart';

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
    }, (data) {
      emit(EditProfileDataSuccess(profileDataModel: data));
    });
  }
}
