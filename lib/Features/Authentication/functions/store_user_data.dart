import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/Models/user_data_model.dart';

Future<void>storeUserData(
    UserCredential userCredential, UserModel userModel) async {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference users = firestore.collection(colectionUsers);
  await users.doc(userCredential.user!.uid).set(userModel.tojson());
}
