part of 'fetch_saved_jop_cubit.dart';

@immutable
sealed class FetchSavedJopState {}

final class FetchSavedJopInitial extends FetchSavedJopState {}

final class FetchSavedJopSuccess extends FetchSavedJopState {
  final List<SavedJopModel> savedJops;

  FetchSavedJopSuccess({required this.savedJops});
}
