import '../local_datasource.dart';

/// {@template todos_api}
/// The interface for an API that provides access to a list of todos.
/// {@endtemplate}
abstract class ITodosApi {
  /// {@macro todos_api}
  const ITodosApi();

  /// Provides a [Stream] of all todos.
  Stream<List<Todo>> getTodos();

  Future<void> createTodo(TodosCompanion todoCompaion);

  Future<void> updateTodo(Todo todo);

  /// Deletes the todo with the given id.
  ///
  /// If no todo with the given id exists, a [TodoNotFoundException] error is
  /// thrown.
  Future<void> deleteTodo(int id);

  /// Deletes all completed todos.
  ///
  /// Returns the number of deleted todos.
  Future<void> clearCompleted();

  /// Sets the `isCompleted` state of all todos to the given value.
  ///
  /// Returns the number of updated todos.
  Future<void> completeAll();
}

/// Error thrown when a [Todo] with a given id is not found.
class TodoNotFoundException implements Exception {}
