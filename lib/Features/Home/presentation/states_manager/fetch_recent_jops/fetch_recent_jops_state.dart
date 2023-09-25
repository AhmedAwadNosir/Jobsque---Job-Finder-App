part of 'fetch_recent_jops_cubit.dart';

@immutable
sealed class FetchRecentJopsState {}

final class FetchRecentJopsInitial extends FetchRecentJopsState {}

final class FetchRecentJopsLoading extends FetchRecentJopsState {}

final class FetchRecentJopsSuccess extends FetchRecentJopsState {
  final List<JopModel> jops;

  FetchRecentJopsSuccess(this.jops);
}

final class FetchRecentJopsFailure extends FetchRecentJopsState {
  final String errorMessage;

  FetchRecentJopsFailure(this.errorMessage);
}
