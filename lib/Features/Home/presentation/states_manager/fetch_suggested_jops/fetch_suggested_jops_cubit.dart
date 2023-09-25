import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_suggested_jops_state.dart';

class FetchSuggestedJopsCubit extends Cubit<FetchSuggestedJopsState> {
  FetchSuggestedJopsCubit(this.homeRepo) : super(FetchSuggestedJopsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSuggestedJopsCubit() async {
    emit(FetchSuggestedJopsLoadin());
    var result = await homeRepo.fetchRecentJop();

    result.fold((failur) {
      emit(FetchSuggestedJopsFailure(failur.errorMessage));
    }, (jops) {
      emit(FetchSuggestedJopsSuccess(jops));
    });
  }
}
