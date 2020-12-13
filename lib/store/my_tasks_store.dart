import 'package:mobx/mobx.dart';
import 'package:tasker/models/task.dart';
import 'package:tasker/services/tasks_service.dart';

part 'my_tasks_store.g.dart';

class MyTasksStore = _MyTasksStore with _$MyTasksStore;

abstract class _MyTasksStore with Store {
  @observable
  bool isLoading = false;

  @observable
  ObservableMap<int, Task> myToDo;

  @observable
  ObservableMap<int, Task> myCompleted;

  @observable
  ObservableMap<int, Task> myOverdue;

  @action
  Future<void> fetchMyToDos() async {
    if (myToDo != null) return;
    myToDo = ObservableMap<int, Task>();
    try {
      isLoading = true;
      Map<int, Task> response = await TasksService.getInstance().fetchMyToDos();
      print(response);
      myToDo.addAll(response);
      isLoading = false;
    } catch (err) {
      isLoading = false;
      throw err;
    }
  }

  @action
  Future<void> fetchMyCompleted() async {
    if (myCompleted != null) return;
    myCompleted = ObservableMap<int, Task>();
    try {
      isLoading = true;
      Map<int, Task> response = await TasksService.getInstance().fetchMyCompleted();
      print(response);
      myCompleted.addAll(response);
      isLoading = false;
    } catch (err) {
      isLoading = false;
      throw err;
    }
  }

  @action
  Future<void> fetchMyOverdue() async {
    if (myOverdue != null) return;
    myOverdue = ObservableMap<int, Task>();
    try {
      isLoading = true;
      Map<int, Task> response = await TasksService.getInstance().fetchMyOverdue();
      print(response);
      myOverdue.addAll(response);
      isLoading = false;
    } catch (err) {
      isLoading = false;
      throw err;
    }
    print(isLoading);
  }

  @action
  Future<void> addTask(Map<String, dynamic> body) async {
    try {
      isLoading = true;
      Task response = await TasksService.getInstance().addTask(body);
      // myToDo.clear();
      // Map<int, Task> responseAll = await TasksService.getInstance().fetchMyToDos();
      if (myToDo == null) {
        myToDo = ObservableMap<int, Task>();
      }
      myToDo.addAll({response.id: response});
      isLoading = false;
    }
    catch (err) {
      isLoading = false;
      throw err;
    }
  }

  // @action
  // Future<void> updateUser(Map<String, dynamic> body) async {
  //   try {
  //     isLoading = true;
  //     loggedInUser = await authService.updateUser(body);
  //     await fetchUserDetails();
  //   } catch (err) {
  //     throw err;
  //   }
  // }

  // @action
  // Future fetchUserDetails() async {
  //   try {
  //     isLoading = true;
  //     UserModal user = await AuthService.getInstance().fetchMe();
  //     await setLoggedInUser(user);
  //   } catch (error) {
  //     isLoading = false;
  //     throw error;
  //   }
  // }
  //
  // @action
  // Future<void> setLoggedInUser(UserModal user) async {
  //   try {
  //     loggedInUser = user;
  //     isLoggedIn = true;
  //     await PreferenceService.getInstance().setAuthUser(user);
  //     isLoading = false;
  //   } catch (err) {
  //     isLoggedIn = false;
  //     isLoading = false;
  //   }
  // }

  // @action
  // Future<User> register(Map<String, String> body) async {
  //   try {
  //     isLoading = true;
  //     LoginResponse response = await authService.registerUser(body);
  //     preferenceService.setAuthToken(response.token);
  //     User user = await fetchUserDetails();
  //     return user;
  //   } catch (err) {
  //     isLoading = false;
  //     throw err;
  //   }
  // }

  // @action
  // Future<bool> forgotPassword(Map<String, String> body) async {
  //   try {
  //     isLoading = true;
  //     bool response = await authService.forgetPassword(body);
  //     isLoading = false;
  //     return response;
  //   } catch (err) {
  //     isLoading = false;
  //     throw err;
  //   }
  // }

  // @action
  // Future<void> resetPassword(Map<String, String> body) async {
  //   try {
  //     isLoading = true;
  //     LoginResponse response = await authService.resetPassword(body);
  //     preferenceService.setAuthToken(response.token);
  //     await setLoggedInUser(response.user);
  //   } catch (err) {
  //     isLoading = false;
  //     throw err;
  //   }
  // }

  // @action
  // Future<void> changePassword(Map<String, String> body) async {
  //   try {
  //     isLoading = true;
  //     LoginResponse response = await authService.changePassword(body);
  //     preferenceService.setAuthToken(response.token);
  //     await setLoggedInUser(response.user);
  //   } catch (err) {
  //     isLoading = false;
  //     throw err;
  //   }
  // }

  // @action
  // Future<void> clearUserStore() async {
  //   isLoading = true;
  //   await signOutGoogle();
  //   await PreferenceService.getInstance().removeAuthUser();
  //   await PreferenceService.getInstance().removeAuthToken();
  //   isLoggedIn = false;
  //   isLoading = false;
  //   loggedInUser = null;
  // }
}