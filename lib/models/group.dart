import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
import 'package:tasker/models/user.dart';
part 'group.g.dart';

@JsonSerializable()
class Group extends _Group with _$Group {
  static Group fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);

  static Map<String, dynamic> toJson(Group group) => _$GroupToJson(group);
}

abstract class _Group with Store {
  @observable
  late int id;

  @observable
  late String name;

  @observable
  @JsonKey(name: 'admin_id')
  late int adminId;

  @observable
  late UserModal admin;

  @observable
  late String code;

  @observable
  late String createdAt;

  @observable
  late String updatedAt;
}