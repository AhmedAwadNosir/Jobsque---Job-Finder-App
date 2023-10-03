import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/presentation/widgets/complete_profile_view_body.dart';
import 'package:meta/meta.dart';

part 'fetch_profile_data_state.dart';

class FetchProfileDataCubit extends Cubit<FetchProfileDataState> {
  FetchProfileDataCubit(this.completeProfileRepoImpl)
      : super(FetchProfileDataInitial());
  final CompleteProfileRepoImpl completeProfileRepoImpl;

  Future<void> fetchPorfileDataCubit() async {
    emit(FetchProfileDataLoading());
    var result = await completeProfileRepoImpl.fetchProfileData();
    result.fold((failure) {
      emit(FetchProfileDataFailure(errorMessage: failure.errorMessage));
    }, (data) async {
      String username = await SharedPreferencesUtil.getString(userName);
      String userEmail = await SharedPreferencesUtil.getString(emailAdress);
      String userBio = await SharedPreferencesUtil.getString(userBiokey);
      String userAdress = await SharedPreferencesUtil.getString(userAddresskey);
      String userMobile = await SharedPreferencesUtil.getString(userMobilekey);
      String userExperince =
          await SharedPreferencesUtil.getString(userExperincekey);
      String userEducation =
          await SharedPreferencesUtil.getString(userEducationKey);
      log("userName : $username");
      log("userName : $userEmail");
      log("userName : $userBio");
      log("userName : $userAdress");
      log("userName : $userMobile");
      log("userName : $userExperince");
      log("userName : $userEducation");
      ProfileDataModel prfileData = ProfileDataModel(
          userName: username,
          email: userEmail,
          bio: userBio,
          address: userAdress,
          mobile: userMobile,
          exceprience: userExperince,
          education: userEducation);
      emit(FetchProfileDataSuccess(profileDataModel: prfileData));
    });
  }

  bool getPersonalDetailCompletedState(
    ProfileDataModel profileDataModel,
  ) {
    if (profileDataModel.bio != "" &&
        profileDataModel.address != "" &&
        profileDataModel.mobile != "") {
      CompleteProfileViewBody.userdatastate = 1;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return true;
    } else if (profileDataModel.bio == "" ||
        profileDataModel.address == "" ||
        profileDataModel.mobile == "") {
      CompleteProfileViewBody.userdatastate = 0;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    } else {
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    }
  }

  bool geteducationCompletdState(
    ProfileDataModel profileDataModel,
  ) {
    if (profileDataModel.education != "") {
      CompleteProfileViewBody.educationstate = 1;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return true;
    } else if (profileDataModel.education == "") {
      CompleteProfileViewBody.educationstate == 0;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    } else {
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    }
  }

  bool getExperinceCompletdState(
    ProfileDataModel profileDataModel,
  ) {
    if (profileDataModel.exceprience != "") {
      CompleteProfileViewBody.experincestate = 1;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return true;
    } else if (profileDataModel.exceprience == "") {
      CompleteProfileViewBody.experincestate = 0;
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    } else {
      emit(FetchProfileDataSuccess(profileDataModel: profileDataModel));
      return false;
    }
  }
}
