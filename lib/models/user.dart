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
  late int id;

  @observable
  late String name;

  @observable
  @JsonKey(name: 'google_id')
  late String googleId;

  @observable
  late String email;

  @observable
  @JsonKey(name: 'profile_pic_url')
  late String profilePictureUrl;

  @observable
  late String createdAt;

  @observable
  late String updatedAt;
}