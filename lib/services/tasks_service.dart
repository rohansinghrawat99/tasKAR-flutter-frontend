import 'package:tasker/models/task.dart';
import 'package:tasker/services/api_service.dart';

class TasksService extends APIService {
  TasksService._();

  factory TasksService.getInstance() => _instance;
  static final TasksService _instance = TasksService._();

  Future<Map<int, Task>> fetchMyToDos() async {
    try {
      Map<String, dynamic> response = await get(
        "/tasks/personal-todo",
        useAuthHeaders: true
      );

      Map<int, Task> data = Map<int, Task>();
      if (response.containsKey("data") && response['data'] != null) {
        response['data'].forEach((v) {
          Task task = Task.fromJson(v);
          data.addAll({task.id: task});
        });
      }
      return data;
    }
    catch (e) {
      throw e;
    }
  }

  Future<Map<int, Task>> fetchMyCompleted() async {
    try {
      Map<String, dynamic> response = await get(
          "/tasks/personal-completed",
          useAuthHeaders: true
      );


      Map<int, Task> data = Map<int, Task>();
      if (response.containsKey("data") && response['data'] != null) {
        response['data'].forEach((v) {
          Task task = Task.fromJson(v);
          data.addAll({task.id: task});
        });
      }
      return data;
    }
    catch (e) {
      throw e;
    }
  }

  Future<Map<int, Task>> fetchMyOverdue() async {
    try {
      Map<String, dynamic> response = await get(
          "/tasks/personal-overdue",
          useAuthHeaders: true
      );


      Map<int, Task> data = Map<int, Task>();
      if (response.containsKey("data") && response['data'] != null) {
        response['data'].forEach((v) {
          Task task = Task.fromJson(v);
          data.addAll({task.id: task});
        });
      }
      return data;
    }
    catch (e) {
      throw e;
    }
  }

  Future<Task> addTask(Map<String, dynamic> body) async {
    try {
      Map<String, dynamic> response = await post(
        "/tasks",
        body: body,
        useAuthHeaders: true
      );
      Task task = Task.fromJson(response['data']);
      return task;
    }

    catch (e) {
      throw e;
    }
  }
}