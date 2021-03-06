import 'package:drift/drift.dart';

@DataClassName('TodoEntry')
class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get content => text()();

  DateTimeColumn get targetDate => dateTime().nullable()();

  // IntColumnn get enumExample => intEnum<Status>()();

  IntColumn get category => integer()
      .nullable()
      .customConstraint('NULLABLE REFERENCES categories(id)')();
}
