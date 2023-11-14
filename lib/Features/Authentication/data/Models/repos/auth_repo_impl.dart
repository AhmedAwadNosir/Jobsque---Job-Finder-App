import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:jobsque_jobfinder/Core/Utils/Errors/failure.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/Utils/sharedpreferancs_util.dart';
import 'package:jobsque_jobfinder/Core/helper/api_services.dart';
import 'package:jobsque_jobfinder/Features/Authentication/data/Models/repos/auth_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthRepoImpl implements AuthRepo {
  final ApiServices apiServices;

  AuthRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, dynamic>> register(
      {required String userName,
      required String email,
      required String password}) async {
    try {
      var data = await apiServices.post(
        endPoint: "/auth/register",
        body: {
          "name": userName,
          "email": email,
          "password": password,
        },
      );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(registerTokenkey, data["token"]);
      var tokenkey = prefs.getString(registerTokenkey);
      log(tokenkey.toString());
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, dynamic>> signIn(
      {required String email, required String password}) async {
    try {
      var data = await apiServices.post(
        endPoint: "/auth/login",
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
      await prefs.setString(userBiokey, "");
      await prefs.setString(userAddresskey, "");
      await prefs.setString(userMobilekey, "");
      await prefs.setString(userExperincekey, "");
      await prefs.setString(userEducationKey, "");
      log("userToken ${prefs.getString(loginTokenkey)}");
      log("userName: ${prefs.getString(userName)}");
      log("email: ${prefs.getString(emailAdress)}");
      log("userId: ${prefs.getInt(userId)}");
      log("userBio:${prefs.getString(userBiokey)}");
      log("userAdress:${prefs.getString(userAddresskey)}");
      log("userMobile: ${prefs.getString(userMobilekey)}");
      log("userExperince: ${prefs.getString(userExperincekey)}");
      log("userEducation: ${prefs.getString(userEducationKey)}");
      log(data.toString());
      return right(data);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, dynamic>> resetPassword(
      {required String password}) async {
    try {
      var result = await apiServices.post(
        endPoint: "/auth/user/update",
        body: {
          "password": password,
        },
        token: await SharedPreferencesUtil.getString(loginTokenkey)
      );
      return right(result);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
