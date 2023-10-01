part of 'edit_profile_data_cubit.dart';

@immutable
sealed class EditProfileDataState {}

final class EditProfileDataInitial extends EditProfileDataState {}

final class EditProfileDataLoading extends EditProfileDataState {}

final class EditProfileDataSuccess extends EditProfileDataState {
  final ProfileDataModel profileDataModel;

  EditProfileDataSuccess({required this.profileDataModel});
}

final class EditProfileDataFailure extends EditProfileDataState {
  final String errorMessage;

  EditProfileDataFailure({required this.errorMessage});
}
