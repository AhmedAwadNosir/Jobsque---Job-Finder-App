part of 'add_cv_file_cubit.dart';

@immutable
sealed class AddCvFileState {}

final class AddCvFileInitial extends AddCvFileState {}

final class AddCvFileSuccess extends AddCvFileState {}

final class AddCvFileFailure extends AddCvFileState {
  final String errorMessage;

  AddCvFileFailure({required this.errorMessage});
}
