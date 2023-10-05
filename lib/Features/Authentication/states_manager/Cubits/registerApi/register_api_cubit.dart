import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'register_api_state.dart';

class RegisterApiCubit extends Cubit<RegisterApiState> {
  RegisterApiCubit(this.authRepo) : super(RegisterApiInitial());
  final AuthRepo authRepo;
  Future registerApi({
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(RegisterApiLoading());
    var result = await authRepo.register(
        userName: userName, email: email, password: password);
    result.fold((failure) {
      emit(RegisterApiFailure(failure.errorMessage));
    }, (data) {
      emit(RegisterApiSuccess(data: data));
    });
  }
}
