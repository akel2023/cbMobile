// ignore_for_file: no_leading_underscores_for_local_identifiers, unnecessary_new, prefer_interpolation_to_compose_strings, unused_local_variable

import 'package:cbmobile/model/tsoftuser_model.dart';
import 'package:cbmobile/model/user_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiService {
  String apiUrl = "https://localhost:7128/api/";

  Future<TSoftUser?> getToken(
      String _userName, String _password, DateTime expirationTime) async {
    try {
      UserModel _model = new UserModel(
        userName: _userName,
        password: _password,
        token: "",
      );

      var response = await Dio().post(apiUrl + "/TSoft/Token");

      if (response.statusCode == 200) {
        debugPrint(response.data);
      }

      return null;
    } catch (e) {
      debugPrint(e.toString());
      return null;
    }
  }
}
