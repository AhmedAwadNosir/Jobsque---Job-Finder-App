
import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/models/apply_jop_model.dart';
import 'package:jobsque_jobfinder/Features/Jop_Details/data/repos/apply_jop_repo.dart';
import 'package:meta/meta.dart';

part 'apply_jop_state.dart';

class ApplyJopCubit extends Cubit<ApplyJopState> {
  ApplyJopCubit(this.appLyJopRepo) : super(ApplyJopCubitInitial());
  final AppLyJopRepo appLyJopRepo;
  Future<void> applyJop({required ApplyJopModel applyModal}) async {
    emit(ApplyJopCubitLoading());
    var result = await appLyJopRepo.applyJop(applyModal: applyModal);
    result.fold((failure) {
      emit(ApplyJopCubitFailure(errorMessage: failure.errorMessage));
    }, (applySuccess) {
      emit(ApplyJopCubitSuccess());
    });
  }
}
