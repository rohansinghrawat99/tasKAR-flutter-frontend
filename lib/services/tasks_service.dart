import 'package:tasker/models/task.dart';
import 'package:tasker/services/api_service.dart';

class TasksService extends APIService {
  TasksService._();

  factory TasksService.getInstance() => _instance;
  static final TasksService _instance = TasksService._();

  Future<List<Task>> myTodo() async {
    try {
      Map<String, dynamic> response = await get(
        "/tasks/personal-todo",
        useAuthHeaders: true
      );
      
      print(response);
      return Task.fromJson(response['data']);
    }
    catch (e) {
      throw e;
    }
  }
}