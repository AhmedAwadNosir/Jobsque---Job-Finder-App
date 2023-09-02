import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Features/Authentication/functions/show_snack_bar.dart';

Future<String> getEmail({required String username}) async {
  try {
    QuerySnapshot snapshot = await FirebaseFirestore.instance
        .collection(colectionUsers)
        .where("userName", isEqualTo: username.trim())
        .get();
    String email = snapshot.docs[0]["email"];
    return email;
  } catch (e) {
    throw Exception(e.toString());
  }
}
