part of 'register_api_cubit.dart';

@immutable
sealed class RegisterApiState {}

final class RegisterApiInitial extends RegisterApiState {}

final class RegisterApiLoading extends RegisterApiState {}

final class RegisterApiSuccess extends RegisterApiState {}

final class RegisterApiFailure extends RegisterApiState {
  final String errorMessage;

  RegisterApiFailure(this.errorMessage);
}
