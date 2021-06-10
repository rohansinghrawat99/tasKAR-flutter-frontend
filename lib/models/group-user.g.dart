// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group-user.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupUser on _GroupUser, Store {
  final _$idAtom = Atom(name: '_GroupUser.id');

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

  final _$groupAtom = Atom(name: '_GroupUser.group');

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

  final _$memberAtom = Atom(name: '_GroupUser.member');

  @override
  UserModal get member {
    _$memberAtom.reportRead();
    return super.member;
  }

  @override
  set member(UserModal value) {
    _$memberAtom.reportWrite(value, super.member, () {
      super.member = value;
    });
  }

  final _$roleAtom = Atom(name: '_GroupUser.role');

  @override
  GroupRole get role {
    _$roleAtom.reportRead();
    return super.role;
  }

  @override
  set role(GroupRole value) {
    _$roleAtom.reportWrite(value, super.role, () {
      super.role = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_GroupUser.createdAt');

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

  final _$updatedAtAtom = Atom(name: '_GroupUser.updatedAt');

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
group: ${group},
member: ${member},
role: ${role},
createdAt: ${createdAt},
updatedAt: ${updatedAt}
    ''';
  }
}
