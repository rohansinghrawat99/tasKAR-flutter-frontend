// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$isLoadingAtom = Atom(name: '_UserStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$isLoggedInAtom = Atom(name: '_UserStore.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.reportRead();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.reportWrite(value, super.isLoggedIn, () {
      super.isLoggedIn = value;
    });
  }

  final _$loggedInUserAtom = Atom(name: '_UserStore.loggedInUser');

  @override
  UserModal? get loggedInUser {
    _$loggedInUserAtom.reportRead();
    return super.loggedInUser;
  }

  @override
  set loggedInUser(UserModal? value) {
    _$loggedInUserAtom.reportWrite(value, super.loggedInUser, () {
      super.loggedInUser = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_UserStore.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$fetchUserDetailsAsyncAction =
      AsyncAction('_UserStore.fetchUserDetails');

  @override
  Future<dynamic> fetchUserDetails() {
    return _$fetchUserDetailsAsyncAction.run(() => super.fetchUserDetails());
  }

  final _$setLoggedInUserAsyncAction =
      AsyncAction('_UserStore.setLoggedInUser');

  @override
  Future<void> setLoggedInUser(UserModal user) {
    return _$setLoggedInUserAsyncAction.run(() => super.setLoggedInUser(user));
  }

  final _$clearUserStoreAsyncAction = AsyncAction('_UserStore.clearUserStore');

  @override
  Future<void> clearUserStore() {
    return _$clearUserStoreAsyncAction.run(() => super.clearUserStore());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
isLoggedIn: ${isLoggedIn},
loggedInUser: ${loggedInUser}
    ''';
  }
}
