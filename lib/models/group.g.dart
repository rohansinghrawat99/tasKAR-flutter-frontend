// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Group on _Group, Store {
  final _$idAtom = Atom(name: '_Group.id');

  @override
  int? get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(int? value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  final _$nameAtom = Atom(name: '_Group.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$adminIdAtom = Atom(name: '_Group.adminId');

  @override
  int? get adminId {
    _$adminIdAtom.reportRead();
    return super.adminId;
  }

  @override
  set adminId(int? value) {
    _$adminIdAtom.reportWrite(value, super.adminId, () {
      super.adminId = value;
    });
  }

  final _$adminAtom = Atom(name: '_Group.admin');

  @override
  UserModal? get admin {
    _$adminAtom.reportRead();
    return super.admin;
  }

  @override
  set admin(UserModal? value) {
    _$adminAtom.reportWrite(value, super.admin, () {
      super.admin = value;
    });
  }

  final _$codeAtom = Atom(name: '_Group.code');

  @override
  String? get code {
    _$codeAtom.reportRead();
    return super.code;
  }

  @override
  set code(String? value) {
    _$codeAtom.reportWrite(value, super.code, () {
      super.code = value;
    });
  }

  final _$createdAtAtom = Atom(name: '_Group.createdAt');

  @override
  String? get createdAt {
    _$createdAtAtom.reportRead();
    return super.createdAt;
  }

  @override
  set createdAt(String? value) {
    _$createdAtAtom.reportWrite(value, super.createdAt, () {
      super.createdAt = value;
    });
  }

  final _$updatedAtAtom = Atom(name: '_Group.updatedAt');

  @override
  String? get updatedAt {
    _$updatedAtAtom.reportRead();
    return super.updatedAt;
  }

  @override
  set updatedAt(String? value) {
    _$updatedAtAtom.reportWrite(value, super.updatedAt, () {
      super.updatedAt = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
adminId: ${adminId},
admin: ${admin},
code: ${code},
createdAt: ${createdAt},
updatedAt: ${updatedAt}
    ''';
  }
}
