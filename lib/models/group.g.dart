// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Group _$GroupFromJson(Map<String, dynamic> json) {
  return Group()
    ..id = json['id'] as int
    ..name = json['name'] as String
    ..admin = json['admin'] == null
        ? null
        : UserModal.fromJson(json['admin'] as Map<String, dynamic>)
    ..code = json['code'] as String
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$GroupToJson(Group instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'admin': instance.admin,
      'code': instance.code,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Group on _Group, Store {
  final _$idAtom = Atom(name: '_Group.id');

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

  final _$nameAtom = Atom(name: '_Group.name');

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

  final _$adminAtom = Atom(name: '_Group.admin');

  @override
  UserModal get admin {
    _$adminAtom.context.enforceReadPolicy(_$adminAtom);
    _$adminAtom.reportObserved();
    return super.admin;
  }

  @override
  set admin(UserModal value) {
    _$adminAtom.context.conditionallyRunInAction(() {
      super.admin = value;
      _$adminAtom.reportChanged();
    }, _$adminAtom, name: '${_$adminAtom.name}_set');
  }

  final _$codeAtom = Atom(name: '_Group.code');

  @override
  String get code {
    _$codeAtom.context.enforceReadPolicy(_$codeAtom);
    _$codeAtom.reportObserved();
    return super.code;
  }

  @override
  set code(String value) {
    _$codeAtom.context.conditionallyRunInAction(() {
      super.code = value;
      _$codeAtom.reportChanged();
    }, _$codeAtom, name: '${_$codeAtom.name}_set');
  }

  final _$createdAtAtom = Atom(name: '_Group.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_Group.updatedAt');

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
