import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

Future<UserCredential> signInWithFacebook() async {
  // Trigger the sign-in flow
  try {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final AccessToken? accessToken = loginResult.accessToken;
    // Create a credential from the access token
    if (accessToken != null) {
      final OAuthCredential facebookAuthCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } else {
      throw Exception("facebook signin is canceld by user try again later");
    }
  } catch (e) {
    if (e is PlatformException) {
      if (e.code == 'ERROR_FACEBOOK_LOGIN_FAILED') {
        // Handle Facebook login failure
        throw Exception('ERROR_FACEBOOK_LOGIN_FAILED try Agian later1');
      } else if (e.code == 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') {
        // Handle existing account with different credentials
        throw Exception("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later2'");
      } else {
        throw Exception("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later3'");
      }
      // Handle other specific error codes as needed
    }else {
        throw Exception("'ERROR_FACEBOOK_LOGIN_FAILED try Agian later4'");
      }
  }
}
