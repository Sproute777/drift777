import 'package:flutter/material.dart';

import 'bootstrap.dart';

import 'src/data/local_datasource/local_datasource.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final Database database = Database();
  final TodosDao todosDao = TodosDao(database);

  bootstrap(todosApi: todosDao);
}
