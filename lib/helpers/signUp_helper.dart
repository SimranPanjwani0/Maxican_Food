import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:ad_exam_1/modals/user_modal.dart';

class SharedPreferencesHelper {
  static const String _keyUser = 'user';

  Future<void> saveUser(UserModal user) async {
    final prefs = await SharedPreferences.getInstance();
    final userData = jsonEncode(user.toMap());
    await prefs.setString(_keyUser, userData);
  }

  Future<UserModal?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userData = prefs.getString(_keyUser);
    if (userData == null) {
      return null;
    }
    return UserModal.fromMap(jsonDecode(userData));
  }

  Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUser);
  }
}
