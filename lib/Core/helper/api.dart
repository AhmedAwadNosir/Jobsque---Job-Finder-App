import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jobsque_jobfinder/Core/Utils/constans.dart';

class Api {
  final String _baseUrl = 'https://project2.amit-learning.com/api';
  final Dio? dio;

  Api({this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    var response = await dio!.get("$_baseUrl$endPoint");
    return response.data;
  }

  Future<dynamic> post(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with status code :${response.statusCode} the problem is : ${jsonDecode(response.body)}");
    }
  }

  Future<dynamic> put(
      {required String url,
      @required dynamic body,
      @required String? token}) async {
    Map<String, String> headers = {};
    if (token != null) {
      headers.addAll({
        "Authorization": "Bearer $token",
      });
    }

    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );

    if (response.statusCode == 200) {
      Map<String, dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(
          "there is a problem with status code :${response.statusCode} the problem is : ${jsonDecode(response.body)}");
    }
  }
}
