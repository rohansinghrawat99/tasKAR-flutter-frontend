import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tasker/models/user.dart';

class PreferenceService {
  PreferenceService._();

  factory PreferenceService.getInstance() => _instance;

  static final PreferenceService _instance = PreferenceService._();

  static const String TOKEN = 'token';
  static const String LOGGED_IN_USER = 'logged_in_user';

  Future<SharedPreferences> _getInstance() async {
    return SharedPreferences.getInstance();
  }

  Future<void> setAuthToken(String token) async {
    (await _getInstance()).setString(PreferenceService.TOKEN, token);
  }

  Future<String?> getAuthToken() async {
    return (await _getInstance()).getString(PreferenceService.TOKEN);
  }

  Future<void> removeAuthToken() async {
    (await this._getInstance()).remove(PreferenceService.TOKEN);
  }

  Future<void> setAuthUser(UserModal user) async {
    // ignore: unnecessary_null_comparison
    if (user != null) {
      (await _getInstance()).setString(PreferenceService.LOGGED_IN_USER,
          json.encode(UserModal.toJson(user)));
    } else {
      (await this._getInstance()).remove(PreferenceService.LOGGED_IN_USER);
    }
  }

  Future<UserModal?> getAuthUser() async {
    final String? user =
        (await _getInstance()).getString(PreferenceService.LOGGED_IN_USER);
    if (user == null) {
      return null;
    }
    return UserModal.fromJson(json.decode(user));
  }

  Future<void> removeAuthUser() async {
    (await this._getInstance()).remove(PreferenceService.LOGGED_IN_USER);
  }
}
