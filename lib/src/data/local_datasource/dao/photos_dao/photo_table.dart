import 'package:drift/drift.dart';

@DataClassName('Photo')
class Photos extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer()();
  TextColumn get url => text()();
  TextColumn get thumbnailUrl => text()();

  @override
  Set<Column> get primaryKey => {id};
}
