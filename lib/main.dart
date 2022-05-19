// import 'package:flutter/material.dart';

// import 'src/common/my_app.dart';
// import 'src/data/local_datasource/local_datasource.dart';

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   final Database database = Database();
//   final TodosDao todosDao = TodosDao(database);
//   runApp(MyApp(database: database, dao: todosDao));
// }

import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

import 'bootstrap.dart';
// import 'src/data/local/plugins/shared_preferences_impl.dart';
// import 'src/data/local/storage_todos_api.dart';
import 'src/data/local_datasource/local_datasource.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Database database = Database();
  final TodosDao todosDao = TodosDao(database);

  // final todosApi = StorageTodosApi(
  //   plugin: SharedPreferencesApi(sharedPreferences: pref),
  // );

  bootstrap(todosApi: todosDao);
}
