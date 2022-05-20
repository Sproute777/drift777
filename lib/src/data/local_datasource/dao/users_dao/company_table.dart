import 'package:drift/drift.dart';

@DataClassName('Company')
class Companies extends Table {
  IntColumn get userId => integer()();
  TextColumn get name => text()();
  TextColumn get catchPhrase => text()();
  TextColumn get bs => text()();

  @override
  Set<Column> get primaryKey => {userId};
}
