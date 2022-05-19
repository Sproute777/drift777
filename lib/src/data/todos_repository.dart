import 'local_datasource/dao/todos_api_contract.dart';
import 'local_datasource/local_datasource.dart';

/// {@template todos_repository}

class TodosRepository {
  const TodosRepository({
    required ITodosApi todosApi,
  }) : _todosApi = todosApi;

  final ITodosApi _todosApi;

  Stream<List<Todo>> getTodos() => _todosApi.getTodos();

  Future<void> createTodo(TodosCompanion todo) => _todosApi.createTodo(todo);

  Future<void> updateTodo(Todo todosCompanion) =>
      _todosApi.updateTodo(todosCompanion);

  Future<void> deleteTodo(int id) => _todosApi.deleteTodo(id);

  Future<void> clearCompleted() => _todosApi.clearCompleted();

  Future<void> completeAll() => _todosApi.completeAll();
}
