// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyTasksStore on _MyTasksStore, Store {
  final _$isLoadingAtom = Atom(name: '_MyTasksStore.isLoading');

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

  final _$myToDoAtom = Atom(name: '_MyTasksStore.myToDo');

  @override
  ObservableMap<int?, Task>? get myToDo {
    _$myToDoAtom.reportRead();
    return super.myToDo;
  }

  @override
  set myToDo(ObservableMap<int?, Task>? value) {
    _$myToDoAtom.reportWrite(value, super.myToDo, () {
      super.myToDo = value;
    });
  }

  final _$myCompletedAtom = Atom(name: '_MyTasksStore.myCompleted');

  @override
  ObservableMap<int?, Task>? get myCompleted {
    _$myCompletedAtom.reportRead();
    return super.myCompleted;
  }

  @override
  set myCompleted(ObservableMap<int?, Task>? value) {
    _$myCompletedAtom.reportWrite(value, super.myCompleted, () {
      super.myCompleted = value;
    });
  }

  final _$myOverdueAtom = Atom(name: '_MyTasksStore.myOverdue');

  @override
  ObservableMap<int?, Task>? get myOverdue {
    _$myOverdueAtom.reportRead();
    return super.myOverdue;
  }

  @override
  set myOverdue(ObservableMap<int?, Task>? value) {
    _$myOverdueAtom.reportWrite(value, super.myOverdue, () {
      super.myOverdue = value;
    });
  }

  final _$fetchMyToDosAsyncAction = AsyncAction('_MyTasksStore.fetchMyToDos');

  @override
  Future<void> fetchMyToDos() {
    return _$fetchMyToDosAsyncAction.run(() => super.fetchMyToDos());
  }

  final _$fetchMyCompletedAsyncAction =
      AsyncAction('_MyTasksStore.fetchMyCompleted');

  @override
  Future<void> fetchMyCompleted() {
    return _$fetchMyCompletedAsyncAction.run(() => super.fetchMyCompleted());
  }

  final _$fetchMyOverdueAsyncAction =
      AsyncAction('_MyTasksStore.fetchMyOverdue');

  @override
  Future<void> fetchMyOverdue() {
    return _$fetchMyOverdueAsyncAction.run(() => super.fetchMyOverdue());
  }

  final _$addTaskAsyncAction = AsyncAction('_MyTasksStore.addTask');

  @override
  Future<void> addTask(Map<String, dynamic> body) {
    return _$addTaskAsyncAction.run(() => super.addTask(body));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
myToDo: ${myToDo},
myCompleted: ${myCompleted},
myOverdue: ${myOverdue}
    ''';
  }
}
