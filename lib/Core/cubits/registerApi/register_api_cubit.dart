import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';
import 'package:jobsque_jobfinder/Core/helper/api.dart';
import 'package:meta/meta.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'register_api_state.dart';

class RegisterApiCubit extends Cubit<RegisterApiState> {
  RegisterApiCubit() : super(RegisterApiInitial());

  Future registerApi({
    required String userName,
    required String email,
    required String password,
  }) async {
    emit(RegisterApiLoading());
    try {
      Map<String, dynamic> data = await Api().post(
        url: "$baseUrl/auth/register",
        body: {
          "name": userName,
          "email": email,
          "password": password,
        },
      );
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString(registerTokenkey, data["token"]);
      print(prefs.getString(registerTokenkey));
      emit(RegisterApiSuccess());
    } catch (e) {
      if (e.toString() == interNetException) {
        emit(RegisterApiFailure(
            "Please Chek Internet Conection You Are Offline"));
      } else {
        emit(RegisterApiFailure(e.toString()));
      }
    }
  }
}
