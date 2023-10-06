part of 'save_jop_cubit.dart';

@immutable
sealed class SaveJopState {}

final class SaveJopInitial extends SaveJopState {}
final class SaveJopSuccess extends SaveJopState {}
