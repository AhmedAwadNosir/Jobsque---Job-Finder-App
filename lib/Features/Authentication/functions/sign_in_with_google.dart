import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

Future<UserCredential> signInWithGoogle() async {
  try {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser != null) {
      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);

      return userCredential;
    } else {
      // User canceled the sign-in process
      // Handle the cancellation or display an error message to the user
      throw Exception('Google sign-in was canceled by the user ');
    }
  } catch (e) {
    // Handle the specific error scenarios
    if (e is PlatformException) {
      if (e.code == 'sign_in_canceled') {
        // User canceled the sign-in process
        // Handle the cancellation or display an error message to the user
        throw Exception('Google sign-in was canceled by the user  ');
      } else if (e.code == '12501') {
        // Google Play services availability issue or invalid configuration
        // Handle the error or display an error message to the user
        throw Exception('Google sign-in failed try Again Later');
      } else {
        // Other platform-specific error occurred
        // Handle the error or display an error message to the user
        throw Exception(
            'An error occurred during Google sign-in: try Again Later');
      }
    } else {
      // Non-platform-specific error occurred
      // Handle the error or display an error message to the user
      throw Exception(
          'An error occurred during Google sign-in: try Again Later');
    }
  }
}
