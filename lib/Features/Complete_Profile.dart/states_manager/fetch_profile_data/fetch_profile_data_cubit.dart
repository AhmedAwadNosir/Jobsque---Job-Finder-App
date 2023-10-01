import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/models/profile_data_model.dart';
import 'package:jobsque_jobfinder/Features/Complete_Profile.dart/data/repos/complete_profile_repo_impl.dart';
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
    }, (data) {
      emit(FetchProfileDataSuccess(profileDataModel: data));
    });
  }
}
