import 'package:drift/drift.dart';

@DataClassName('Address')
class Addresses extends Table {
  IntColumn get userId => integer()();
  TextColumn get street => text()();
  TextColumn get suite => text()();
  TextColumn get city => text()();
  TextColumn get zipcode => text()();

  TextColumn get lat => text()();
  TextColumn get lng => text()();

  @override
  Set<Column> get primaryKey => {userId};
}
