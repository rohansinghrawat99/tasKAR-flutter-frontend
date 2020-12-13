// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Task _$TaskFromJson(Map<String, dynamic> json) {
  return Task()
    ..id = json['id'] as int
    ..title = json['title'] as String
    ..description = json['description'] as String
    ..groupId = json['group_id'] as int
    ..group = json['group'] == null
        ? null
        : Group.fromJson(json['group'] as Map<String, dynamic>)
    ..assignedToId = json['assigned_to_id'] as int
    ..assignedTo = json['assignedTo'] == null
        ? null
        : UserModal.fromJson(json['assignedTo'] as Map<String, dynamic>)
    ..dueTime = json['due_time'] as String
    ..status = json['status'] as String
    ..creatorId = json['creator_id'] as int
    ..creatorUser = json['creatorUser'] == null
        ? null
        : UserModal.fromJson(json['creatorUser'] as Map<String, dynamic>)
    ..createdAt = json['createdAt'] as String
    ..updatedAt = json['updatedAt'] as String;
}

Map<String, dynamic> _$TaskToJson(Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'group_id': instance.groupId,
      'group': instance.group,
      'assigned_to_id': instance.assignedToId,
      'assignedTo': instance.assignedTo,
      'due_time': instance.dueTime,
      'status': instance.status,
      'creator_id': instance.creatorId,
      'creatorUser': instance.creatorUser,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _Task, Store {
  final _$idAtom = Atom(name: '_Task.id');

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

  final _$titleAtom = Atom(name: '_Task.title');

  @override
  String get title {
    _$titleAtom.context.enforceReadPolicy(_$titleAtom);
    _$titleAtom.reportObserved();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.context.conditionallyRunInAction(() {
      super.title = value;
      _$titleAtom.reportChanged();
    }, _$titleAtom, name: '${_$titleAtom.name}_set');
  }

  final _$descriptionAtom = Atom(name: '_Task.description');

  @override
  String get description {
    _$descriptionAtom.context.enforceReadPolicy(_$descriptionAtom);
    _$descriptionAtom.reportObserved();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.context.conditionallyRunInAction(() {
      super.description = value;
      _$descriptionAtom.reportChanged();
    }, _$descriptionAtom, name: '${_$descriptionAtom.name}_set');
  }

  final _$groupIdAtom = Atom(name: '_Task.groupId');

  @override
  int get groupId {
    _$groupIdAtom.context.enforceReadPolicy(_$groupIdAtom);
    _$groupIdAtom.reportObserved();
    return super.groupId;
  }

  @override
  set groupId(int value) {
    _$groupIdAtom.context.conditionallyRunInAction(() {
      super.groupId = value;
      _$groupIdAtom.reportChanged();
    }, _$groupIdAtom, name: '${_$groupIdAtom.name}_set');
  }

  final _$groupAtom = Atom(name: '_Task.group');

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

  final _$assignedToIdAtom = Atom(name: '_Task.assignedToId');

  @override
  int get assignedToId {
    _$assignedToIdAtom.context.enforceReadPolicy(_$assignedToIdAtom);
    _$assignedToIdAtom.reportObserved();
    return super.assignedToId;
  }

  @override
  set assignedToId(int value) {
    _$assignedToIdAtom.context.conditionallyRunInAction(() {
      super.assignedToId = value;
      _$assignedToIdAtom.reportChanged();
    }, _$assignedToIdAtom, name: '${_$assignedToIdAtom.name}_set');
  }

  final _$assignedToAtom = Atom(name: '_Task.assignedTo');

  @override
  UserModal get assignedTo {
    _$assignedToAtom.context.enforceReadPolicy(_$assignedToAtom);
    _$assignedToAtom.reportObserved();
    return super.assignedTo;
  }

  @override
  set assignedTo(UserModal value) {
    _$assignedToAtom.context.conditionallyRunInAction(() {
      super.assignedTo = value;
      _$assignedToAtom.reportChanged();
    }, _$assignedToAtom, name: '${_$assignedToAtom.name}_set');
  }

  final _$dueTimeAtom = Atom(name: '_Task.dueTime');

  @override
  String get dueTime {
    _$dueTimeAtom.context.enforceReadPolicy(_$dueTimeAtom);
    _$dueTimeAtom.reportObserved();
    return super.dueTime;
  }

  @override
  set dueTime(String value) {
    _$dueTimeAtom.context.conditionallyRunInAction(() {
      super.dueTime = value;
      _$dueTimeAtom.reportChanged();
    }, _$dueTimeAtom, name: '${_$dueTimeAtom.name}_set');
  }

  final _$statusAtom = Atom(name: '_Task.status');

  @override
  String get status {
    _$statusAtom.context.enforceReadPolicy(_$statusAtom);
    _$statusAtom.reportObserved();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.context.conditionallyRunInAction(() {
      super.status = value;
      _$statusAtom.reportChanged();
    }, _$statusAtom, name: '${_$statusAtom.name}_set');
  }

  final _$creatorIdAtom = Atom(name: '_Task.creatorId');

  @override
  int get creatorId {
    _$creatorIdAtom.context.enforceReadPolicy(_$creatorIdAtom);
    _$creatorIdAtom.reportObserved();
    return super.creatorId;
  }

  @override
  set creatorId(int value) {
    _$creatorIdAtom.context.conditionallyRunInAction(() {
      super.creatorId = value;
      _$creatorIdAtom.reportChanged();
    }, _$creatorIdAtom, name: '${_$creatorIdAtom.name}_set');
  }

  final _$creatorUserAtom = Atom(name: '_Task.creatorUser');

  @override
  UserModal get creatorUser {
    _$creatorUserAtom.context.enforceReadPolicy(_$creatorUserAtom);
    _$creatorUserAtom.reportObserved();
    return super.creatorUser;
  }

  @override
  set creatorUser(UserModal value) {
    _$creatorUserAtom.context.conditionallyRunInAction(() {
      super.creatorUser = value;
      _$creatorUserAtom.reportChanged();
    }, _$creatorUserAtom, name: '${_$creatorUserAtom.name}_set');
  }

  final _$createdAtAtom = Atom(name: '_Task.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_Task.updatedAt');

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
