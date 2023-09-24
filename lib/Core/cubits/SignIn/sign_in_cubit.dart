import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/helper/api.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/fetch_user_data.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/get_email.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_facebook.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_google.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  Future signInApi({
    required String email,
    required String password,
  }) async {
    emit(SignInLoading());
    try {
      Map<String, dynamic> data = await Api().post(
        url: "$baseUrl/auth/login",
        body: {
          "email": email,
          "password": password,
        },
      );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(loginTokenkey, data["token"]);
      prefs.setString(userName, data["user"]["name"]);
      prefs.setString(emailAdress, data["user"]["email"]);
      prefs.setString(isLogin, "True");
      print(prefs.getString(loginTokenkey));
      print(prefs.getString(userName));
      print(prefs.getString(emailAdress));
      print(prefs.getString(isLogin));
      log(data.toString());
      emit(SignInSuccess());
    } catch (e) {
      if (e.toString() == loginInterNetException) {
        emit(SignInFailure("Please Chek Internet Conection You Are Offline"));
      } else {
        emit(SignInFailure(e.toString()));
      }
    }
  }

  Future singInWithEmailAndPassword(
      {required String username, required String password}) async {
    emit(SignInLoading());
    try {
      String emailAddress = await getEmail(username: username);
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.trim(), password: password.trim());
      await fetchUserData(credential);
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
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later'"));
    }
  }
}
