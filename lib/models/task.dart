import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:tasker/models/user.dart';

import 'group.dart';
part 'task.g.dart';

@JsonSerializable()
class Task extends _Task with _$Task {
  static Task fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);

  static Map<String, dynamic> toJson(Task task) => _$TaskToJson(task);
}

abstract class _Task with Store {
  @observable
  int id;

  @observable
  String title;

  @observable
  String description;

  @observable
  @JsonKey(name: 'group_id')
  int groupId;

  @observable
  Group group;

  @observable
  @JsonKey(name: 'assigned_to_id')
  int assignedToId;

  @observable
  UserModal assignedTo;

  @observable
  @JsonKey(name: 'due_time')
  String dueTime;

  @observable
  String status;

  @observable
  @JsonKey(name: 'creator_id')
  int creatorId;

  @observable
  UserModal creatorUser;

  @observable
  String createdAt;

  @observable
  String updatedAt;
}