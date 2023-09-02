import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

Future sendResetPasswordEmail({required String email}) async {
  try {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  } catch (e) {
    log(e.toString());
  }
}
