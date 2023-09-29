part of 'add_other_cv_files_cubit.dart';

@immutable
sealed class AddOtherCvFilesState {}

final class AddOtherCvFilesInitial extends AddOtherCvFilesState {}

final class AddOtherCvFilesLoading extends AddOtherCvFilesState {}

final class AddOtherCvFilesSuccess extends AddOtherCvFilesState {}

final class AddOtherCvFilesFailure extends AddOtherCvFilesState {
  final String errorMessages;

  AddOtherCvFilesFailure({required this.errorMessages});
}
