import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'reset_password_state.dart';

class ResetPasswordCubit extends Cubit<ResetPasswordState> {
  ResetPasswordCubit(this.authRepo) : super(ResetPasswordInitial());
  final AuthRepo authRepo;

  Future resetPassword({required String password}) async {
    emit(ResetPasswordLoading());
    var result = await authRepo.resetPassword(password: password);
    result.fold((failure) {
      emit(ResetPasswordFailure(errorMessage: failure.errorMessage));
    }, (data) {
      emit(ResetPasswordSuccess(result: data));
    });
  }
}
