import 'local_datasource/dao/todos_api_contract.dart';
import 'local_datasource/dao/dao.dart';
import 'local_datasource/local_datasource.dart';

/// {@template todos_repository}

class TodosRepository {
  const TodosRepository({
    required UsersDao todosApi,
  }) : _todosApi = todosApi;

  final UsersDao _todosApi;

  Future<void> saveUser(UsersCompanion user) async => _todosApi.saveUser(user);

  Future<void> deleteUser(int id) async => _todosApi.deleteUser(id);

  Future<void> saveUsers(List<UsersCompanion> listUsers) async {
    _todosApi.saveUsers(listUsers);
  }

  Future<List<Address>> fetchAddresses() async => _todosApi.fetchAddresses();
  Future<List<Company>> fetchCompanies() async => _todosApi.fetchCompanies();

  Future<void> saveAddress(AddressesCompanion address) async =>
      await _todosApi.saveAddress(address);

  Future<void> saveCompany(CompaniesCompanion company) async =>
      await _todosApi.saveCompany(company);

  Future<void> clearUsers() async => await _todosApi.clearUsers();

  Future<void> saveUserFromMap(List<Map<String, dynamic>> listMap) async =>
      _todosApi.saveUsersFromMap(listMap);

  Future<List<User>> fetchUsers() async => _todosApi.fetchUsers();

  // Stream<List<Todo>> getTodos() => _todosApi.getTodos();

  // Future<void> createTodo(TodosCompanion todo) => _todosApi.createTodo(todo);

  // Future<void> updateTodo(Todo todosCompanion) =>
  //     _todosApi.updateTodo(todosCompanion);

  // Future<void> deleteTodo(int id) => _todosApi.deleteTodo(id);

  // Future<void> clearCompleted() => _todosApi.clearCompleted();

  // Future<void> completeAll() => _todosApi.completeAll();
}
