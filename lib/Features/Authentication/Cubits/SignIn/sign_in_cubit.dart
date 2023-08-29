import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/sign_in_with_google.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  void singInWithEmailAndPassword(
      {required String emailAddress, required String password}) async {
    emit(SignInLoading());
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailAddress.trim(), password: password.trim());
      emit(SignInSuccess());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        emit(SignInFailure('No user found for that email.'));
      } else if (e.code == 'wrong-password') {
        emit(SignInFailure('Wrong password provided for that user.'));
      }
    }
  }

  Future signInGoogle() async {
    emit(SignInLoading());
    try {
      await signInWithGoogle();
      emit(SignInSuccess());
    } catch (e) {
      emit(SignInFailure("Error happend with googl sign in try Again Later"));
    }
  }
}
