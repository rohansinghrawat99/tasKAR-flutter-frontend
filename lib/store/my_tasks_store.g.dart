// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MyTasksStore on _MyTasksStore, Store {
  final _$isLoadingAtom = Atom(name: '_MyTasksStore.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$myToDoAtom = Atom(name: '_MyTasksStore.myToDo');

  @override
  ObservableMap<int, Task> get myToDo {
    _$myToDoAtom.context.enforceReadPolicy(_$myToDoAtom);
    _$myToDoAtom.reportObserved();
    return super.myToDo;
  }

  @override
  set myToDo(ObservableMap<int, Task> value) {
    _$myToDoAtom.context.conditionallyRunInAction(() {
      super.myToDo = value;
      _$myToDoAtom.reportChanged();
    }, _$myToDoAtom, name: '${_$myToDoAtom.name}_set');
  }

  final _$myCompletedAtom = Atom(name: '_MyTasksStore.myCompleted');

  @override
  ObservableMap<int, Task> get myCompleted {
    _$myCompletedAtom.context.enforceReadPolicy(_$myCompletedAtom);
    _$myCompletedAtom.reportObserved();
    return super.myCompleted;
  }

  @override
  set myCompleted(ObservableMap<int, Task> value) {
    _$myCompletedAtom.context.conditionallyRunInAction(() {
      super.myCompleted = value;
      _$myCompletedAtom.reportChanged();
    }, _$myCompletedAtom, name: '${_$myCompletedAtom.name}_set');
  }

  final _$myOverdueAtom = Atom(name: '_MyTasksStore.myOverdue');

  @override
  ObservableMap<int, Task> get myOverdue {
    _$myOverdueAtom.context.enforceReadPolicy(_$myOverdueAtom);
    _$myOverdueAtom.reportObserved();
    return super.myOverdue;
  }

  @override
  set myOverdue(ObservableMap<int, Task> value) {
    _$myOverdueAtom.context.conditionallyRunInAction(() {
      super.myOverdue = value;
      _$myOverdueAtom.reportChanged();
    }, _$myOverdueAtom, name: '${_$myOverdueAtom.name}_set');
  }

  final _$fetchMyToDosAsyncAction = AsyncAction('fetchMyToDos');

  @override
  Future<void> fetchMyToDos() {
    return _$fetchMyToDosAsyncAction.run(() => super.fetchMyToDos());
  }

  final _$fetchMyCompletedAsyncAction = AsyncAction('fetchMyCompleted');

  @override
  Future<void> fetchMyCompleted() {
    return _$fetchMyCompletedAsyncAction.run(() => super.fetchMyCompleted());
  }

  final _$fetchMyOverdueAsyncAction = AsyncAction('fetchMyOverdue');

  @override
  Future<void> fetchMyOverdue() {
    return _$fetchMyOverdueAsyncAction.run(() => super.fetchMyOverdue());
  }

  final _$addTaskAsyncAction = AsyncAction('addTask');

  @override
  Future<void> addTask(Map<String, dynamic> body) {
    return _$addTaskAsyncAction.run(() => super.addTask(body));
  }
}
