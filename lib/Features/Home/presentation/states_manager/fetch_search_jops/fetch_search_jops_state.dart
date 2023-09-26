part of 'fetch_search_jops_cubit.dart';

@immutable
sealed class FetchSearchJopsState {}

final class FetchSearchJopsInitial extends FetchSearchJopsState {}

final class FetchSearchJopsLoading extends FetchSearchJopsState {}

final class FetchSearchJopsSuccess extends FetchSearchJopsState {
  final List<JopModel> searchJops;

  FetchSearchJopsSuccess({required this.searchJops});
}

final class FetchSearchJopsFailure extends FetchSearchJopsState {
  final String errorMessages;

  FetchSearchJopsFailure({required this.errorMessages});
}
