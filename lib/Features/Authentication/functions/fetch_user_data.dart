import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Models/user_data_model.dart';

Future<UserModel> fetchUserData(UserCredential userCredential) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = firestore.collection(colectionUsers);
  var user = await users.doc(userCredential.user!.uid).get();
  UserModel userModel = UserModel.fromjson(user.data() as Map<String, dynamic>);
  log(userModel.userName!);
  log(userModel.email!);
  log(userModel.userPhoto!);
  log(userModel.wantedJop!);
  log(userModel.workLocation!);
  log(userModel.workNature!);
  return userModel;
}
