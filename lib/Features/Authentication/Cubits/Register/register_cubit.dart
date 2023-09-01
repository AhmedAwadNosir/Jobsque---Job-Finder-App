import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Models/user_data_model.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_facebook.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/store_user_data.dart';
import 'package:meta/meta.dart';

import '../../functions/sign_in_with_google.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());
  void registerWithEmailAndPassword(
      {required UserModel userModel, required String password}) async {
    emit(RegisterLoading());
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userModel.email!.trim(),
        password: password.trim(),
      );
      await storeUserData(credential, userModel);
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

  void signUpWithGoogle({required UserModel userModel}) async {
    emit(RegisterLoading());
    try {
      UserCredential userCredential = await signInWithGoogle();
      userModel.userCredential = userCredential;
      storeUserData(userCredential, userModel);

      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure("Error happend with googl sign in try Again Later"));
    }
    return null;
  }

  void signUpWithFacebook({required UserModel userModel}) async {
    emit(RegisterLoading());
    try {
      UserCredential userCredential = await signInWithFacebook();
      userModel.userCredential = userCredential;
      storeUserData(userCredential, userModel);
      emit(RegisterSuccess());
    } catch (e) {
      emit(RegisterFailure("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later'"));
    }
    return null;
  }
}
