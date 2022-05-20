import 'package:drift/drift.dart';

@DataClassName('Todo')
class Todos extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer()();
  TextColumn get title => text()();
  BoolColumn get completed => boolean()();

  @override
  Set<Column> get primaryKey => {id};
}
