part of 'fetch_profile_data_cubit.dart';

@immutable
sealed class FetchProfileDataState {}

final class FetchProfileDataInitial extends FetchProfileDataState {}

final class FetchProfileDataLoading extends FetchProfileDataState {}

final class FetchProfileDataSuccess extends FetchProfileDataState {
  final ProfileDataModel profileDataModel;

  FetchProfileDataSuccess({required this.profileDataModel});
}

final class FetchProfileDataFailure extends FetchProfileDataState {
  final String errorMessage;

  FetchProfileDataFailure({required this.errorMessage});
}
