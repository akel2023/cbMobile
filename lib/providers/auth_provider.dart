// ignore_for_file: empty_constructor_bodies, unnecessary_new, prefer_final_fields, unused_field, unused_local_variable, no_leading_underscores_for_local_identifiers, empty_catches

import 'package:cbmobile/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  UserModel _user = new UserModel(userName: '', password: '', token: '');

  UserModel get userInfo => _user;

  AuthProvider();

  void setUser(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<void> logout() async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.clear();
    _user = new UserModel(userName: '', password: '', token: '');
    notifyListeners();
  }

  bool get isAuthorized {
    return _user.token.isNotEmpty;
  }

  bool displayedOnboard = false;

  Future<bool?> tryLogin() async {
    try {
      final preferences = await SharedPreferences.getInstance();

      var token = preferences.get('token');

      if (token != null) {
        String token = preferences.get("token").toString();
        String userName = preferences.get("userName").toString();

        UserModel user = new UserModel(
            userName: userName, password: '', token: token.toString());
        _user = user;
        return true;
      } else {
        return false;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
