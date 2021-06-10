import 'package:tasker/models/user.dart';
import 'package:tasker/services/preference_service.dart';
import 'package:tasker/services/sign-in.service.dart';

import 'api_service.dart';


class AuthService extends APIService {
  AuthService._();

  factory AuthService.getInstance() => _instance;
  static final AuthService _instance = AuthService._();

  String? refEmail;

  Future<UserModal?> login() async {
    try {
      Map<String, dynamic>? body = await signInWithGoogle();
      if (body == null) {
        return null;
      }
      Map<String, dynamic> response = await (post(
        '/login',
        body: body,
        useAuthHeaders: false,
      ) as Future<Map<String, dynamic>>);

      print(response);
      PreferenceService.getInstance().setAuthToken(response['token']);

      return UserModal.fromJson(response['user']);
    } catch (e) {
      throw e;
    }
  }

  // Future<LoginResponse> registerUser(Map<String, dynamic> body) async {
  //   try {
  //     Map<String, dynamic> response = await post(
  //       '/auth/register',
  //       body: body,
  //       useAuthHeaders: false,
  //     );
  //
  //     response['user'] = response['user']['data'];
  //
  //     return LoginResponse.fromJson(response);
  //   } on NetworkError catch (e) {
  //     throw e;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
  //
  // Future<User> updateUser(Map<String, dynamic> body) async {
  //   try {
  //     Map<String, dynamic> response = await patch(
  //       '/me',
  //       body: body,
  //       useAuthHeaders: true,
  //     );
  //
  //     return User.fromJson(response['data']);
  //   } on NetworkError catch (e) {
  //     throw e;
  //   } catch (e) {
  //     throw e;
  //   }
  // }
  //
  Future<UserModal> fetchMe() async {
    try {
      Map<String, dynamic> response = await (get(
        '/me',
        useAuthHeaders: true,
      ) as Future<Map<String, dynamic>>);
      UserModal user = UserModal.fromJson(response['data']);
      return user;
    } catch (e) {
      throw e;
    }
  }

  // Future<LoginResponse> resetPassword(Map<String, dynamic> body) async {
  //   try {
  //     Map<String, dynamic> response = await post(
  //       '/auth/password/reset',
  //       body: body,
  //       useAuthHeaders: false,
  //     );
  //
  //     response['user'] = response['user']['data'];
  //
  //     return LoginResponse.fromJson(response);
  //   } on NetworkError catch (e) {
  //     throw e;
  //   } catch (e) {
  //     throw e;
  //   }
  // }


}