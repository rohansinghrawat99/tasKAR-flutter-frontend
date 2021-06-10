import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:tasker/models/user.dart';
import 'package:tasker/models/group.dart';

import 'enum_constant.dart';
part 'group-user.g.dart';

@JsonSerializable()
class GroupUser extends _GroupUser with _$GroupUser {
  static GroupUser fromJson(Map<String, dynamic> json) => _$GroupUserFromJson(json);

  static Map<String, dynamic> toJson(GroupUser groupUser) => _$GroupUserToJson(groupUser);
}

abstract class _GroupUser with Store {
  @observable
  late int id;

  @observable
  late Group group;

  @observable
  late UserModal member;

  @observable
  late GroupRole role;

  @observable
  late String createdAt;

  @observable
  late String updatedAt;
}