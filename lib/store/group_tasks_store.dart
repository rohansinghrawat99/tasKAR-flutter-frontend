// import 'package:mobx/mobx.dart';
// import 'package:tasker/models/task.dart';
// import 'package:tasker/models/user.dart';
// import 'package:tasker/services/auth_service.dart';
// import 'package:tasker/services/preference_service.dart';
// import 'package:tasker/services/sign-in.service.dart';
//
// part 'group_tasks_store.g.dart';
//
// class GroupTasksStore = _GroupTasksStore with _$GroupTasksStore;
//
// abstract class _GroupTasksStore with Store {
//   @observable
//   bool isLoading = false;
//
//   @observable
//   List<Task> groupToDo;
//
//   @observable
//   List<Task> groupUnderReview;
//
//   @observable
//   List<Task> groupCompleted;
//
//   @observable
//   List<Task> groupOverdue;
//
//   @action
//   Future<void> login() async {
//     try {
//       isLoading = true;
//       UserModal response = await AuthService.getInstance().login();
//       if (response != null) {
//         setLoggedInUser(response);
//       }
//       else {
//         isLoading = false;
//       }
//     } catch (err) {
//       isLoading = false;
//       throw err;
//     }
//   }
//
//   // @action
//   // Future<void> updateUser(Map<String, dynamic> body) async {
//   //   try {
//   //     isLoading = true;
//   //     loggedInUser = await authService.updateUser(body);
//   //     await fetchUserDetails();
//   //   } catch (err) {
//   //     throw err;
//   //   }
//   // }
//
//   @action
//   Future fetchUserDetails() async {
//     try {
//       isLoading = true;
//       UserModal user = await AuthService.getInstance().fetchMe();
//       await setLoggedInUser(user);
//     } catch (error) {
//       isLoading = false;
//       throw error;
//     }
//   }
//
//   @action
//   Future<void> setLoggedInUser(UserModal user) async {
//     try {
//       loggedInUser = user;
//       isLoggedIn = true;
//       await PreferenceService.getInstance().setAuthUser(user);
//       isLoading = false;
//     } catch (err) {
//       isLoggedIn = false;
//       isLoading = false;
//     }
//   }
//
//   // @action
//   // Future<User> register(Map<String, String> body) async {
//   //   try {
//   //     isLoading = true;
//   //     LoginResponse response = await authService.registerUser(body);
//   //     preferenceService.setAuthToken(response.token);
//   //     User user = await fetchUserDetails();
//   //     return user;
//   //   } catch (err) {
//   //     isLoading = false;
//   //     throw err;
//   //   }
//   // }
//
//   // @action
//   // Future<bool> forgotPassword(Map<String, String> body) async {
//   //   try {
//   //     isLoading = true;
//   //     bool response = await authService.forgetPassword(body);
//   //     isLoading = false;
//   //     return response;
//   //   } catch (err) {
//   //     isLoading = false;
//   //     throw err;
//   //   }
//   // }
//
//   // @action
//   // Future<void> resetPassword(Map<String, String> body) async {
//   //   try {
//   //     isLoading = true;
//   //     LoginResponse response = await authService.resetPassword(body);
//   //     preferenceService.setAuthToken(response.token);
//   //     await setLoggedInUser(response.user);
//   //   } catch (err) {
//   //     isLoading = false;
//   //     throw err;
//   //   }
//   // }
//
//   // @action
//   // Future<void> changePassword(Map<String, String> body) async {
//   //   try {
//   //     isLoading = true;
//   //     LoginResponse response = await authService.changePassword(body);
//   //     preferenceService.setAuthToken(response.token);
//   //     await setLoggedInUser(response.user);
//   //   } catch (err) {
//   //     isLoading = false;
//   //     throw err;
//   //   }
//   // }
//
//   @action
//   Future<void> clearUserStore() async {
//     isLoading = true;
//     await signOutGoogle();
//     await PreferenceService.getInstance().removeAuthUser();
//     await PreferenceService.getInstance().removeAuthToken();
//     isLoggedIn = false;
//     isLoading = false;
//     loggedInUser = null;
//   }
// }