import 'package:flutter/material.dart';

import 'src/common/my_app.dart';
import 'src/data/local_database/local_database.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final Database database = Database();
  final TodosDao todosDao = TodosDao(database);
  runApp(MyApp(database: database, dao: todosDao));
}
