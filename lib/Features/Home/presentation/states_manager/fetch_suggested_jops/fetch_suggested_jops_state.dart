part of 'fetch_suggested_jops_cubit.dart';

@immutable
sealed class FetchSuggestedJopsState {}

final class FetchSuggestedJopsInitial extends FetchSuggestedJopsState {}

final class FetchSuggestedJopsLoadin extends FetchSuggestedJopsState {}

final class FetchSuggestedJopsSuccess extends FetchSuggestedJopsState {
  final List<JopModel> jops;

  FetchSuggestedJopsSuccess(this.jops);
}

final class FetchSuggestedJopsFailure extends FetchSuggestedJopsState {
  final String  errorMessage;

  FetchSuggestedJopsFailure(this.errorMessage);
}
