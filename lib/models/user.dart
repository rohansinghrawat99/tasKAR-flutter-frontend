import 'package:json_annotation/json_annotation.dart';
import 'package:mobx/mobx.dart';
part 'user.g.dart';

@JsonSerializable()
class UserModal extends _UserModal with _$UserModal {
  static UserModal fromJson(Map<String, dynamic> json) => _$UserModalFromJson(json);

  static Map<String, dynamic> toJson(UserModal user) => _$UserModalToJson(user);
}

abstract class _UserModal with Store {
  @observable
  int? id;

  @observable
  String? name;

  @observable
  @JsonKey(name: 'google_id')
  String? googleId;

  @observable
  String? email;

  @observable
  @JsonKey(name: 'profile_pic_url')
  String? profilePictureUrl;

  @observable
  String? createdAt;

  @observable
  String? updatedAt;
}