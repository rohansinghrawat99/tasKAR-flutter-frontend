// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModal _$UserModalFromJson(Map<String, dynamic> json) {
  return UserModal()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..googleId = json['google_id'] as String
    ..email = json['email'] as String
    ..profilePictureUrl = json['profile_pic_url'] as String
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$UserModalToJson(UserModal instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'google_id': instance.googleId,
      'email': instance.email,
      'profile_pic_url': instance.profilePictureUrl,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModal on _UserModal, Store {
  final _$idAtom = Atom(name: '_UserModal.id');

  @override
  int get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$nameAtom = Atom(name: '_UserModal.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$googleIdAtom = Atom(name: '_UserModal.googleId');

  @override
  String get googleId {
    _$googleIdAtom.reportRead();
    return super.googleId;
  }

  @override
  set googleId(String value) {
    _$googleIdAtom.reportWrite(value, super.googleId, () {
      super.googleId = value;
    });
  }

  final _$emailAtom = Atom(name: '_UserModal.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$profilePictureUrlAtom = Atom(name: '_UserModal.profilePictureUrl');

  @override
  String get profilePictureUrl {
    _$profilePictureUrlAtom.reportRead();
    return super.profilePictureUrl;
  }

  @override
  set profilePictureUrl(String value) {
    _$profilePictureUrlAtom.reportWrite(value, super.profilePictureUrl, () {
      super.profilePictureUrl = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_UserModal.createdAt');

  @override
  String get createdAt {
    _$createdAtAtom.reportRead();
    return super.createdAt;
  }

  @override
  set createdAt(String value) {
    _$createdAtAtom.reportWrite(value, super.createdAt, () {
      super.createdAt = value;
    });
  }

  final _$updatedAtAtom = Atom(name: '_UserModal.updatedAt');

  @override
  String get updatedAt {
    _$updatedAtAtom.reportRead();
    return super.updatedAt;
  }

  @override
  set updatedAt(String value) {
    _$updatedAtAtom.reportWrite(value, super.updatedAt, () {
      super.updatedAt = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
googleId: ${googleId},
email: ${email},
profilePictureUrl: ${profilePictureUrl},
createdAt: ${createdAt},
updatedAt: ${updatedAt}
    ''';
  }
}
