import 'package:flutter/material.dart';

import 'bootstrap.dart';

import 'src/data/local_datasource/dao/dao.dart';
import 'src/data/local_datasource/local_datasource.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final AppDatabase database = AppDatabase();
  final UsersDao todosDao = UsersDao(database);

  bootstrap(todosApi: todosDao);
}
