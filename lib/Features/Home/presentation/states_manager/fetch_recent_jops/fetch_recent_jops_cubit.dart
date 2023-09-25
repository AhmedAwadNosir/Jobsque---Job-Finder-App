import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Home/data/models/jop_model.dart';
import 'package:jobsque_jobfinder/Features/Home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'fetch_recent_jops_state.dart';

class FetchRecentJopsCubit extends Cubit<FetchRecentJopsState> {
  FetchRecentJopsCubit(this.homeRepo) : super(FetchRecentJopsInitial());

  final HomeRepo homeRepo;

  Future<void> fetchRecentJopsCubit() async {
    emit(FetchRecentJopsLoading());
    var result = await homeRepo.fetchRecentJop();

    result.fold((failur) {
      emit(FetchRecentJopsFailure(failur.errorMessage));
    }, (jops) {
      emit(FetchRecentJopsSuccess(jops));
    });
  }
}
