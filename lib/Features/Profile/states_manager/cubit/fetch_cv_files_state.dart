part of 'fetch_cv_files_cubit.dart';

@immutable
sealed class FetchCvFilesState {}

final class FetchCvFilesInitial extends FetchCvFilesState {}

final class FetchCvFilesSuccess extends FetchCvFilesState {
  final List<CvFileModel> cvFiles;

  FetchCvFilesSuccess({required this.cvFiles});
}

final class FetchCvFilesFailure extends FetchCvFilesState {
  final String errorMessage;

  FetchCvFilesFailure({required this.errorMessage});
}
