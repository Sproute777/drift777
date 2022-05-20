import 'package:drift/drift.dart';

@DataClassName('Comment')
class Comments extends Table {
  IntColumn get id => integer()();
  IntColumn get postId => integer()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get body => text()();

  @override
  Set<Column> get primaryKey => {id};
}
