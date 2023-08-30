import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_facebook.dart';
import 'package:meta/meta.dart';

import '../../functions/sign_in_with_google.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  void registerWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    emit(RegisterLoading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailAddress.trim(),
        password: password.trim(),
      );
      emit(RegisterSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        emit(RegisterFailure('The password provided is too weak.'));
      } else if (e.code == 'email-already-in-use') {
        emit(RegisterFailure('The account already exists for that email.'));
      }
    } catch (e) {
      log(e.toString());
    }
  }

   Future signUpWithGoogle() async {
    emit(RegisterLoading());
    try {
      await signInWithGoogle();
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure("Error happend with googl sign in try Again Later"));
    }
  }

   Future signUpWithFacebook() async {
    emit(RegisterLoading());
    try {
      await signInWithFacebook();
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later'"));
    }
  }
}