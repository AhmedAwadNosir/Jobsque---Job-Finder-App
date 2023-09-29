part of 'apply_jop_cubit.dart';

@immutable
sealed class ApplyJopState {}

final class ApplyJopCubitInitial extends ApplyJopState {}

final class ApplyJopCubitLoading extends ApplyJopState {}

final class ApplyJopCubitSuccess extends ApplyJopState {}

final class ApplyJopCubitFailure extends ApplyJopState {
  final String errorMessage;

  ApplyJopCubitFailure({required this.errorMessage});
}
