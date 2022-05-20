import 'dart:async';

import 'package:drift/drift.dart';
import '../../local_datasource.dart';

part 'posts_dao.g.dart';

@DriftAccessor(tables: const <Type>[Posts])
class PostsDao extends DatabaseAccessor<AppDatabase> with _$PostsDaoMixin {
  final AppDatabase database;
  PostsDao(this.database) : super(database);

  Future<void> todo() async => select(posts).get();
}
