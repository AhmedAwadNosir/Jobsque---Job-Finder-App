import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/fetch_user_data.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/get_email.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_facebook.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_google.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(this.authRepo) : super(SignInInitial());
  final AuthRepo authRepo;
  Future <void>signInApi({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    var result = await authRepo.signIn(email: email, password: password);
    result.fold((failure) {
      emit(SignInFailure(failure.errorMessage));
    }, (data) {
      emit(SignInSuccess(data: data));
    });
  }

  Future singInWithEmailAndPassword(
      {required String username, required String password}) async {
    emit(SignInLoading());
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String emailAddress = await getEmail(username: username);
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.trim(), password: password.trim());
      await fetchUserData(credential);

      prefs.setString(isLogin, "True");
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailure('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailure('Wrong password provided for that user.'));
      }
    } catch (e) {
      emit(SignInFailure(
          "No user found please try agian later with valid user "));
    }
  }

  Future signInGoogle() async {
    emit(SignInLoading());
    try {
      UserCredential credential = await signInWithGoogle();
      await fetchUserData(credential);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(isLogin, "True");
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure("Error happend with googl sign in try Again Later"));
    }
  }

  Future signInFacebook() async {
    emit(SignInLoading());
    try {
      UserCredential credential = await signInWithFacebook();
      await fetchUserData(credential);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(isLogin, "True");
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later'"));
    }
  }
}
