import 'package:flutter/material.dart';
import 'package:ad_exam_1/modals/user_modal.dart';
import 'package:ad_exam_1/helpers/signUp_helper.dart';

class UserController with ChangeNotifier {
  UserModal? _user;
  bool isLogIn = false;
  final SharedPreferencesHelper _sharedPreferencesHelper =
      SharedPreferencesHelper();

  UserModal? get user => _user;

  Future<void> loadUser() async {
    _user = await _sharedPreferencesHelper.getUser();
    notifyListeners();
  }


  Future<void> signup(String email, String username, String password) async {
    _user = UserModal(email: email, username: username, password: password);
    await _sharedPreferencesHelper.saveUser(_user!);
    notifyListeners();
  }

  Future<bool> login(String username, String password) async {
    _user = await _sharedPreferencesHelper.getUser();
    if (_user != null &&
        _user!.username == username &&
        _user!.password == password) {
      notifyListeners();
      return true;
    }
    return false;
  }

  Future<void> logout() async {
    _user = null;
    await _sharedPreferencesHelper.clearUser();
    notifyListeners();
  }
}
