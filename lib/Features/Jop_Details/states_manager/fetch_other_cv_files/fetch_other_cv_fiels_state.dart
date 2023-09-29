part of 'fetch_other_cv_fiels_cubit.dart';

@immutable
sealed class FetchOtherCvFielsState {}

final class FetchOtherCvFielsInitial extends FetchOtherCvFielsState {}

final class FetchOtherCvFielsLoadin extends FetchOtherCvFielsState {}

final class FetchOtherCvFielsSuccess extends FetchOtherCvFielsState {
  final List<CvFileModel> cvFiels;

  FetchOtherCvFielsSuccess({required this.cvFiels});
}

final class FetchOtherCvFielsFailure extends FetchOtherCvFielsState {
  final String errorMessage;

  FetchOtherCvFielsFailure({required this.errorMessage});
}
