// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group-user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GroupUser _$GroupUserFromJson(Map<String, dynamic> json) {
  return GroupUser()
    ..id = json['id'] as int
    ..group = json['group'] == null
        ? null
        : Group.fromJson(json['group'] as Map<String, dynamic>)
    ..member = json['member'] == null
        ? null
        : UserModal.fromJson(json['member'] as Map<String, dynamic>)
    ..role = _$enumDecodeNullable(_$GroupRoleEnumMap, json['role'])
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$GroupUserToJson(GroupUser instance) => <String, dynamic>{
      'id': instance.id,
      'group': instance.group,
      'member': instance.member,
      'role': _$GroupRoleEnumMap[instance.role],
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$GroupRoleEnumMap = {
  GroupRole.admin: 'admin',
  GroupRole.member: 'member',
};

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupUser on _GroupUser, Store {
  final _$idAtom = Atom(name: '_GroupUser.id');

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

  final _$groupAtom = Atom(name: '_GroupUser.group');

  @override
  Group get group {
    _$groupAtom.context.enforceReadPolicy(_$groupAtom);
    _$groupAtom.reportObserved();
    return super.group;
  }

  @override
  set group(Group value) {
    _$groupAtom.context.conditionallyRunInAction(() {
      super.group = value;
      _$groupAtom.reportChanged();
    }, _$groupAtom, name: '${_$groupAtom.name}_set');
  }

  final _$memberAtom = Atom(name: '_GroupUser.member');

  @override
  UserModal get member {
    _$memberAtom.context.enforceReadPolicy(_$memberAtom);
    _$memberAtom.reportObserved();
    return super.member;
  }

  @override
  set member(UserModal value) {
    _$memberAtom.context.conditionallyRunInAction(() {
      super.member = value;
      _$memberAtom.reportChanged();
    }, _$memberAtom, name: '${_$memberAtom.name}_set');
  }

  final _$roleAtom = Atom(name: '_GroupUser.role');

  @override
  GroupRole get role {
    _$roleAtom.context.enforceReadPolicy(_$roleAtom);
    _$roleAtom.reportObserved();
    return super.role;
  }

  @override
  set role(GroupRole value) {
    _$roleAtom.context.conditionallyRunInAction(() {
      super.role = value;
      _$roleAtom.reportChanged();
    }, _$roleAtom, name: '${_$roleAtom.name}_set');
  }

  final _$createdAtAtom = Atom(name: '_GroupUser.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_GroupUser.updatedAt');

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
