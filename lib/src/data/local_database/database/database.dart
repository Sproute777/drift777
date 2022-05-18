// don't import moor_web.dart or moor_flutter/moor_flutter.dart in shared code
import 'package:drift/drift.dart';
import '../connect/shared.dart' as impl;
import '../local_database.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Todos, Categories],
  daos: [TodosDao],
  // include: {'query.drift'}
  // queries: {
  //   '_resetCategory':
  //       'UPDATE todoEntries SET category = NULL WHERE category = ?',
  // },
)
class Database extends _$Database {
  Database() : super.connect(impl.connect());

  @override
  int get schemaVersion => 2;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (Migrator m) {
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        if (from == 1) {
          await m.addColumn(todos, todos.targetDate);
        }
      },
      beforeOpen: (details) async {
        if (details.wasCreated) {
          // Make sure that foreign keys are enabled
          await customStatement('PRAGMA foreign_keys = ON');

          // create default categories and entries
          final workId = await into(categories)
              .insert(const CategoriesCompanion(description: Value('Work')));

          await into(todos).insert(TodosCompanion(
            content: const Value('A first todo entry'),
            targetDate: Value(DateTime.now()),
          ));

          await into(todos).insert(
            TodosCompanion(
              content: const Value('Rework persistence code'),
              category: Value(workId),
              targetDate: Value(
                DateTime.now().add(const Duration(days: 4)),
              ),
            ),
          );
        }
      },

      // beforeOpen: (details) async {
      //   if (details.wasCreated) {
      //     // await customStatement('PRAGMA foreign_keys = ON');

      //     final workId = await into(categories)
      //         .insert(const CategoriesCompanion(description: Value('Work')));
      //     // create default categories and entries

      //     await batch(
      //       (b) {
      //         b.insert(
      //             todoEntries,
      //             TodoEntriesCompanion.insert(
      //               content: 'безымянный туду',
      //               targetDate: Value(DateTime.now()),
      //             ));

      //         b.insert(
      //           todoEntries,
      //           TodoEntriesCompanion.insert(
      //             content: 'туду из группы work',
      //             category: Value(workId),
      //             targetDate: Value(
      //               DateTime.now().add(const Duration(days: 4)),
      //             ),
      //           ),
      //         );
      //       },

      //     );
      //   }
      // }
    );
  }
}

/*-----------------------------------------------------------------------------*/