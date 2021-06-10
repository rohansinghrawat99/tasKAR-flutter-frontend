import 'package:mobx/mobx.dart';
import 'package:tasker/models/task.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/services/auth_service.dart';
import 'package:tasker/services/preference_service.dart';
import 'package:tasker/services/sign-in.service.dart';
import 'package:tasker/services/tasks_service.dart';

part 'group_tasks_store.g.dart';

class GroupTasksStore = _GroupTasksStore with _$GroupTasksStore;

abstract class _GroupTasksStore with Store {
  @observable
  bool isLoading = false;

  @observable
  ObservableMap<int, ObservableMap<int, Task>> groupToDo;

  @observable
  ObservableMap<int, ObservableMap<int, Task>> groupUnderReview;

  @observable
  ObservableMap<int, ObservableMap<int, Task>> groupCompleted;

  @observable
  ObservableMap<int, ObservableMap<int, Task>> groupOverdue;

  @action
  Future<void> fetchGroupToDos() async {
    if (groupToDo != null) return;
    groupToDo = ObservableMap<int, Task>();
    try {
      isLoading = true;
      Map<int, Task> response = await TasksService.getInstance().fetchMyToDos();
      print(response);
      groupToDo.addAll(response);
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

}