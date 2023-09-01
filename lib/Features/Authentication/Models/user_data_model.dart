import 'package:firebase_auth/firebase_auth.dart';

class UserModel {
  String? userName;
  String? email;
  String? userPhoto;
  final String wantedJop;
  final String workLocation;
  final String workNature;
   UserCredential? userCredential;

  UserModel({
     this.userName,
     this.email,
    this.userPhoto,
    required this.wantedJop,
    required this.workLocation,
    required this.workNature,
    this.userCredential
    
  });

  factory UserModel.fromjson(Map<String, dynamic> json) => UserModel(
        userName: json["userName"],
        email: json["email"],
        userPhoto:
            json["userPhoto"] ?? "lib/Core/Utils/assets/images/profile-pic.png",
        wantedJop: json["wantedJop"],
        workLocation: json["workLocation"],
        workNature: json["workNature"],
      );

  Map<String, dynamic> tojson() => {
        "userName": userName??userCredential!.user!.displayName,
        "email": email??userCredential!.user!.email,
        "userPhoto": userPhoto??userCredential!.user!.photoURL,
        "wantedJop": wantedJop,
        "workLocation": workLocation,
        "workNature": workNature,
      };
}
