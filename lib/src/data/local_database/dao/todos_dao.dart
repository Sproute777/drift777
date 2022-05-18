import 'dart:async';

import 'package:drift/drift.dart';
import 'package:rxdart/rxdart.dart';
import '../local_database.dart';

part 'todos_dao.g.dart';

@DriftAccessor(tables: [Todos, Categories])
class TodosDao extends DatabaseAccessor<Database> with _$TodosDaoMixin {
  final Database database;
  TodosDao(this.database) : super(database) {
    _init();
  }

  StreamSubscription? _rxSubs;

  final BehaviorSubject<Category?> _activeCategory =
      BehaviorSubject.seeded(null);

  final BehaviorSubject<List<CategoryWithActiveInfo>> _allCategories =
      BehaviorSubject();

  Stream<List<EntryWithCategory>>? _currentTodos;

  Stream<List<EntryWithCategory>>? get homeScreenTodos => _currentTodos;

  Stream<List<CategoryWithActiveInfo>> get allCategories => _allCategories;
// ----------------------------------------------------------------------------

  void _init() {
    // после того как сменится категория обновится стрим Todo
    _currentTodos = _activeCategory.switchMap(watchTodosInCategory);

    _rxSubs = Rx.combineLatest2<List<CategoryWithCount>, Category?,
        List<CategoryWithActiveInfo>>(
      categoriesWithCount(),
      _activeCategory,
      (allCategories, selected) {
        return allCategories.map((category) {
          final isActive = selected?.id == category.category?.id;

          return CategoryWithActiveInfo(category, isActive);
        }).toList();
      },
    ).listen(_allCategories.add);
  }
  //-----------------------------------------------------------------------------

  Stream<List<EntryWithCategory>> watchTodosInCategory(Category? category) {
    if (category != null) {
      final query = select(todos).join(
        [leftOuterJoin(categories, categories.id.equalsExp(todos.category))],
      )..where(categories.id.equals(category.id));

      return query.watch().map((rows) {
        // read both the entry and the associated category for each row
        return rows.map((row) {
          return EntryWithCategory(
            row.readTable(todos),
            row.readTable(categories),
          );
        }).toList();
      });
    }

    final query = select(todos)..where((t) => todos.category.isNull());

    return query.watch().map((rows) {
      // read both the entry and the associated category for each row
      return rows.map((row) {
        return EntryWithCategory(row, null);
      }).toList();
    });
  }

// ----------------------------------------------------------------------------

  Stream<List<CategoryWithCount>> categoriesWithCount() {
    // select all categories and load how many associated Todos there are for
    // each category
    return database.customSelect(
      'SELECT c.id, c.desc, '
      '(SELECT COUNT(*) FROM todos WHERE category = c.id) AS amount '
      'FROM categories c '
      'UNION ALL SELECT null, null, '
      '(SELECT COUNT(*) FROM todos WHERE category IS NULL)',
      readsFrom: {todos, categories},
    ).map((row) {
      // when we have the result set, map each row to the data class
      final hasId = row.data['id'] != null;

      return CategoryWithCount(
        hasId ? Category.fromData(row.data) : null,
        row.read<int>('amount'),
      );
    }).watch();
  }

// -----------------------------------------------------------------------------

  void showCategory(Category? category) {
    _activeCategory.add(category);
  }

  Future<int> createCategory(String description) {
    return into(categories).insert(
      CategoriesCompanion(description: Value(description)),
    );
  }

  Future deleteCategory(Category category) {
    return delete(categories).delete(category);
  }

// ----------------------------------------------------------------------------

  Future<int> _createTodo(TodosCompanion entry) async {
    return into(todos).insert(entry);
  }

  void createTodo(String content) async {
    await _createTodo(TodosCompanion(
      content: Value(content),
      category: Value(_activeCategory.value?.id),
    ));
  }

  void updateTodo(TodoEntry entry) {
    update(todos).replace(entry);
  }

  Future<int> deleteTodo(TodoEntry entry) async {
    return await delete(todos).delete(entry);
  }

// -----------------------------------------------------------------------------
  void close() {
    _rxSubs?.cancel();
    _allCategories.close();
    _activeCategory.close();
    database.close();
  }
}
