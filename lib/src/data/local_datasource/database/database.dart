// don't import moor_web.dart or moor_flutter/moor_flutter.dart in shared code
import 'package:drift/drift.dart';
import '../connect/shared.dart' as impl;
import '../local_datasource.dart';

part 'database.g.dart';

@DriftDatabase(
  tables: [Todos],
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
      onCreate: (Migrator m) async {
        await m.drop(todos);
        return m.createAll();
      },
      onUpgrade: (Migrator m, int from, int to) async {
        await m.drop(todos);
      },
      beforeOpen: (details) async {
        if (details.wasCreated) {
          // Make sure that foreign keys are enabled
          await customStatement('PRAGMA foreign_keys = ON');

          // create default categories and entries

          await into(todos).insert(TodosCompanion(
              title: const Value('A first todo entry'),
              description: Value('this is a dicription'),
              isCompleted: Value(false)));

          await into(todos).insert(
            TodosCompanion(
                title: const Value('second todo'),
                description: Value('other description'),
                isCompleted: Value(false)),
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