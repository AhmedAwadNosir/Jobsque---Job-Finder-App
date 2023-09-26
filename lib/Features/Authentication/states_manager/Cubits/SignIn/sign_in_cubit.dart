import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/fetch_user_data.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/get_email.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_facebook.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_google.dart';
// ignore: depend_on_referenced_packages
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
      // ignore: missing_required_param
      Map<String, dynamic> data = await ApiServices().post(
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
      prefs.setInt(userId, data["user"]["id"]);
      prefs.setString(isLogin, "True");
      log(prefs.getString(loginTokenkey).toString());
      log(prefs.getString(userName).toString());
      log(prefs.getString(emailAdress).toString());
      log(prefs.getInt(userId).toString());
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
