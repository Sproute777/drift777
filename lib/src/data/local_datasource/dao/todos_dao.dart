import 'dart:async';

import 'package:drift/drift.dart';
import '../../../data/local_datasource/dao/todos_api_contract.dart';
import 'package:rxdart/rxdart.dart';
import '../local_datasource.dart';

part 'todos_dao.g.dart';

@DriftAccessor(tables: [Todos])
class TodosDao extends DatabaseAccessor<Database>
    with _$TodosDaoMixin
    implements ITodosApi {
  final Database database;
  TodosDao(this.database) : super(database) {
    _init();
  }

  StreamSubscription? _rxSubs;
  final BehaviorSubject<List<Todo>> _todos = BehaviorSubject.seeded([]);

  void _init() {
    _rxSubs = select(todos).watch().listen((event) {
      _todos.add(event);
    });
  }

  void close() {
    _rxSubs?.cancel();
    _todos.close();
    // _activeCategory.close();
    database.close();
  }

  @override
  Future<void> clearCompleted() async {
    update(todos)
      ..where((t) => t.isCompleted.equals(true))
      ..write(TodosCompanion(isCompleted: Value(false)));
  }

  @override
  Future<void> completeAll() async {
    update(todos)
      ..where((t) => t.isCompleted.equals(false))
      ..write(TodosCompanion(isCompleted: Value(true)));
  }

  @override
  Stream<List<Todo>> getTodos() {
    return _todos.asBroadcastStream();
  }

  @override
  Future<void> createTodo(TodosCompanion task) async {
    await into(todos).insertOnConflictUpdate(task);
  }

  Future<void> updateTodo(Todo task) async {
    await into(todos).insertOnConflictUpdate(task);
  }

  @override
  Future<void> deleteTodo(int id) async {
    (delete(todos)..where((tbl) => tbl.id.equals(id))).go();
  }
}
