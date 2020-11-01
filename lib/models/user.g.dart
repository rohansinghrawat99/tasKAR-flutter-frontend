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

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserModal on _UserModal, Store {
  final _$idAtom = Atom(name: '_UserModal.id');

  @override
  int get id {
    _$idAtom.context.enforceReadPolicy(_$idAtom);
    _$idAtom.reportObserved();
    return super.id;
  }

  @override
  set id(int value) {
    _$idAtom.context.conditionallyRunInAction(() {
      super.id = value;
      _$idAtom.reportChanged();
    }, _$idAtom, name: '${_$idAtom.name}_set');
  }

  final _$nameAtom = Atom(name: '_UserModal.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$googleIdAtom = Atom(name: '_UserModal.googleId');

  @override
  String get googleId {
    _$googleIdAtom.context.enforceReadPolicy(_$googleIdAtom);
    _$googleIdAtom.reportObserved();
    return super.googleId;
  }

  @override
  set googleId(String value) {
    _$googleIdAtom.context.conditionallyRunInAction(() {
      super.googleId = value;
      _$googleIdAtom.reportChanged();
    }, _$googleIdAtom, name: '${_$googleIdAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_UserModal.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$profilePictureUrlAtom = Atom(name: '_UserModal.profilePictureUrl');

  @override
  String get profilePictureUrl {
    _$profilePictureUrlAtom.context.enforceReadPolicy(_$profilePictureUrlAtom);
    _$profilePictureUrlAtom.reportObserved();
    return super.profilePictureUrl;
  }

  @override
  set profilePictureUrl(String value) {
    _$profilePictureUrlAtom.context.conditionallyRunInAction(() {
      super.profilePictureUrl = value;
      _$profilePictureUrlAtom.reportChanged();
    }, _$profilePictureUrlAtom, name: '${_$profilePictureUrlAtom.name}_set');
  }

  final _$createdAtAtom = Atom(name: '_UserModal.createdAt');

  @override
  String get createdAt {
    _$createdAtAtom.context.enforceReadPolicy(_$createdAtAtom);
    _$createdAtAtom.reportObserved();
    return super.createdAt;
  }

  @override
  set createdAt(String value) {
    _$createdAtAtom.context.conditionallyRunInAction(() {
      super.createdAt = value;
      _$createdAtAtom.reportChanged();
    }, _$createdAtAtom, name: '${_$createdAtAtom.name}_set');
  }

  final _$updatedAtAtom = Atom(name: '_UserModal.updatedAt');

  @override
  String get updatedAt {
    _$updatedAtAtom.context.enforceReadPolicy(_$updatedAtAtom);
    _$updatedAtAtom.reportObserved();
    return super.updatedAt;
  }

  @override
  set updatedAt(String value) {
    _$updatedAtAtom.context.conditionallyRunInAction(() {
      super.updatedAt = value;
      _$updatedAtAtom.reportChanged();
    }, _$updatedAtAtom, name: '${_$updatedAtAtom.name}_set');
  }
}
