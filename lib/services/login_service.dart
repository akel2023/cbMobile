// ignore_for_file: use_super_parameters, unnecessary_new, prefer_interpolation_to_compose_strings, no_leading_underscores_for_local_identifiers, unused_local_variable, prefer_const_constructors, use_build_context_synchronously, unnecessary_null_comparison

import 'dart:convert';

import 'package:cbmobile/core/appsettings.dart';
import 'package:cbmobile/model/tsoftuser_model.dart';
import 'package:cbmobile/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

abstract class ILoginService {
  final path = AppSettings.API_URL;

  ILoginService();

  Future<TSoftUser?> fetchLogin(UserModel model, BuildContext context);
  //final Dio dio;
}

class LoginService extends ILoginService {
  LoginService() : super();

  @override
  Future<TSoftUser?> fetchLogin(UserModel model, BuildContext context) async {
    var pathUrl = AppSettings.API_URL + 'TSoft/Token';
    Uri apiUrl = Uri.parse(pathUrl);
    var data = jsonEncode(model);
    var headers = AppSettings.HEADERS;
    var response = await http.post(apiUrl, headers: headers, body: data);

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Post created successfully!"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Failed to create post!"),
      ));
    }

    if (response.statusCode == 200) {
      TSoftResource responseData =
          TSoftResource.fromJson(jsonDecode(response.body));

      if (responseData.data != null) {
        return responseData.data.first;
      }
    }

    return null;
  }

  Future<void> saveToken(String s, TSoftUser user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("token", s);
    await prefs.setString("user", user.toJson().toString());
  }
}
