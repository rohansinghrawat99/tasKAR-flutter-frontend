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
  int id;

  @observable
  Group group;

  @observable
  UserModal member;

  @observable
  GroupRole role;

  @observable
  String createdAt;

  @observable
  String updatedAt;
}