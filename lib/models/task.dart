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
  late int id;

  @observable
  late String title;

  @observable
  late String description;

  @observable
  @JsonKey(name: 'group_id')
  late int groupId;

  @observable
  late Group group;

  @observable
  @JsonKey(name: 'assigned_to_id')
  late int assignedToId;

  @observable
  late UserModal assignedTo;

  @observable
  @JsonKey(name: 'due_time')
  late String dueTime;

  @observable
  late String status;

  @observable
  @JsonKey(name: 'creator_id')
  late int creatorId;

  @observable
  late UserModal creatorUser;

  @observable
  late String createdAt;

  @observable
  late String updatedAt;
}