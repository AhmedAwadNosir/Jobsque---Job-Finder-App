import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_search_jops_state.dart';

class FetchSearchJopsCubit extends Cubit<FetchSearchJopsState> {
  FetchSearchJopsCubit(this.homeRepo) : super(FetchSearchJopsInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSearchJops({required String searchKey}) async {
    emit(FetchSearchJopsLoading());
    var result = await homeRepo.fetchSearchJops(searchKey: searchKey);

    result.fold((failure) {
      emit(FetchSearchJopsFailure(errorMessages: failure.errorMessage));
    }, (jops) {
      emit(FetchSearchJopsSuccess(searchJops: jops));
    });
  }
}
