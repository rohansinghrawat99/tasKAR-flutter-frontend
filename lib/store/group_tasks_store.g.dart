// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_tasks_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$GroupTasksStore on _GroupTasksStore, Store {
  final _$isLoadingAtom = Atom(name: '_GroupTasksStore.isLoading');

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

  final _$groupToDoAtom = Atom(name: '_GroupTasksStore.groupToDo');

  @override
  ObservableMap<int, ObservableMap<int, Task>> get groupToDo {
    _$groupToDoAtom.reportRead();
    return super.groupToDo;
  }

  @override
  set groupToDo(ObservableMap<int, ObservableMap<int, Task>> value) {
    _$groupToDoAtom.reportWrite(value, super.groupToDo, () {
      super.groupToDo = value;
    });
  }

  final _$groupUnderReviewAtom =
      Atom(name: '_GroupTasksStore.groupUnderReview');

  @override
  ObservableMap<int, ObservableMap<int, Task>> get groupUnderReview {
    _$groupUnderReviewAtom.reportRead();
    return super.groupUnderReview;
  }

  @override
  set groupUnderReview(ObservableMap<int, ObservableMap<int, Task>> value) {
    _$groupUnderReviewAtom.reportWrite(value, super.groupUnderReview, () {
      super.groupUnderReview = value;
    });
  }

  final _$groupCompletedAtom = Atom(name: '_GroupTasksStore.groupCompleted');

  @override
  ObservableMap<int, ObservableMap<int, Task>> get groupCompleted {
    _$groupCompletedAtom.reportRead();
    return super.groupCompleted;
  }

  @override
  set groupCompleted(ObservableMap<int, ObservableMap<int, Task>> value) {
    _$groupCompletedAtom.reportWrite(value, super.groupCompleted, () {
      super.groupCompleted = value;
    });
  }

  final _$groupOverdueAtom = Atom(name: '_GroupTasksStore.groupOverdue');

  @override
  ObservableMap<int, ObservableMap<int, Task>> get groupOverdue {
    _$groupOverdueAtom.reportRead();
    return super.groupOverdue;
  }

  @override
  set groupOverdue(ObservableMap<int, ObservableMap<int, Task>> value) {
    _$groupOverdueAtom.reportWrite(value, super.groupOverdue, () {
      super.groupOverdue = value;
    });
  }

  final _$fetchGroupToDosAsyncAction =
      AsyncAction('_GroupTasksStore.fetchGroupToDos');

  @override
  Future<void> fetchGroupToDos() {
    return _$fetchGroupToDosAsyncAction.run(() => super.fetchGroupToDos());
  }

  final _$fetchMyCompletedAsyncAction =
      AsyncAction('_GroupTasksStore.fetchMyCompleted');

  @override
  Future<void> fetchMyCompleted() {
    return _$fetchMyCompletedAsyncAction.run(() => super.fetchMyCompleted());
  }

  final _$fetchMyOverdueAsyncAction =
      AsyncAction('_GroupTasksStore.fetchMyOverdue');

  @override
  Future<void> fetchMyOverdue() {
    return _$fetchMyOverdueAsyncAction.run(() => super.fetchMyOverdue());
  }

  final _$addTaskAsyncAction = AsyncAction('_GroupTasksStore.addTask');

  @override
  Future<void> addTask(Map<String, dynamic> body) {
    return _$addTaskAsyncAction.run(() => super.addTask(body));
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
groupToDo: ${groupToDo},
groupUnderReview: ${groupUnderReview},
groupCompleted: ${groupCompleted},
groupOverdue: ${groupOverdue}
    ''';
  }
}
