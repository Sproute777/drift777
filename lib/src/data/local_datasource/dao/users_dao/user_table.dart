import 'package:drift/drift.dart';

@DataClassName('User')
class Users extends Table {
  IntColumn get id => integer()();
  TextColumn get username => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get phone => text()();
  // @JsonKey('other_name')
  TextColumn get website => text()();

  @override
  Set<Column> get primaryKey => {id};
}
