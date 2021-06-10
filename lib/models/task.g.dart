// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Task on _Task, Store {
  final _$idAtom = Atom(name: '_Task.id');

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

  final _$titleAtom = Atom(name: '_Task.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_Task.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$groupIdAtom = Atom(name: '_Task.groupId');

  @override
  int get groupId {
    _$groupIdAtom.reportRead();
    return super.groupId;
  }

  @override
  set groupId(int value) {
    _$groupIdAtom.reportWrite(value, super.groupId, () {
      super.groupId = value;
    });
  }

  final _$groupAtom = Atom(name: '_Task.group');

  @override
  Group get group {
    _$groupAtom.reportRead();
    return super.group;
  }

  @override
  set group(Group value) {
    _$groupAtom.reportWrite(value, super.group, () {
      super.group = value;
    });
  }

  final _$assignedToIdAtom = Atom(name: '_Task.assignedToId');

  @override
  int get assignedToId {
    _$assignedToIdAtom.reportRead();
    return super.assignedToId;
  }

  @override
  set assignedToId(int value) {
    _$assignedToIdAtom.reportWrite(value, super.assignedToId, () {
      super.assignedToId = value;
    });
  }

  final _$assignedToAtom = Atom(name: '_Task.assignedTo');

  @override
  UserModal get assignedTo {
    _$assignedToAtom.reportRead();
    return super.assignedTo;
  }

  @override
  set assignedTo(UserModal value) {
    _$assignedToAtom.reportWrite(value, super.assignedTo, () {
      super.assignedTo = value;
    });
  }

  final _$dueTimeAtom = Atom(name: '_Task.dueTime');

  @override
  String get dueTime {
    _$dueTimeAtom.reportRead();
    return super.dueTime;
  }

  @override
  set dueTime(String value) {
    _$dueTimeAtom.reportWrite(value, super.dueTime, () {
      super.dueTime = value;
    });
  }

  final _$statusAtom = Atom(name: '_Task.status');

  @override
  String get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(String value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$creatorIdAtom = Atom(name: '_Task.creatorId');

  @override
  int get creatorId {
    _$creatorIdAtom.reportRead();
    return super.creatorId;
  }

  @override
  set creatorId(int value) {
    _$creatorIdAtom.reportWrite(value, super.creatorId, () {
      super.creatorId = value;
    });
  }

  final _$creatorUserAtom = Atom(name: '_Task.creatorUser');

  @override
  UserModal get creatorUser {
    _$creatorUserAtom.reportRead();
    return super.creatorUser;
  }

  @override
  set creatorUser(UserModal value) {
    _$creatorUserAtom.reportWrite(value, super.creatorUser, () {
      super.creatorUser = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_Task.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_Task.updatedAt');

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
title: ${title},
description: ${description},
groupId: ${groupId},
group: ${group},
assignedToId: ${assignedToId},
assignedTo: ${assignedTo},
dueTime: ${dueTime},
status: ${status},
creatorId: ${creatorId},
creatorUser: ${creatorUser},
createdAt: ${createdAt},
updatedAt: ${updatedAt}
    ''';
  }
}
