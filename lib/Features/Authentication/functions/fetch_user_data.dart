import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/user_data_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<UserModel> fetchUserData(UserCredential userCredential) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = firestore.collection(colectionUsers);
  var user = await users.doc(userCredential.user!.uid).get();
  UserModel userModel = UserModel.fromjson(user.data() as Map<String, dynamic>);
  log(userModel.userName!);
  log(userModel.email!);
  log(userModel.userPhoto!);
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString(
      loginTokenkey, "466|Ycml9AsZKa9Kcl7kBCXqfDjjO5qqvfkbLCY1WbP4");
  prefs.setString(userName, userModel.userName!);
  prefs.setString(emailAdress, userModel.email!);
  prefs.setInt(userId, 117);
  log(prefs.getString(loginTokenkey).toString());
  log(prefs.getString(userName).toString());
  log(prefs.getString(emailAdress).toString());
  log(prefs.getInt(userId).toString());

  return userModel;
}
