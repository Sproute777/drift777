import 'dart:async';

import 'package:drift/drift.dart';
import '../../local_datasource.dart';

part 'comments_dao.g.dart';

@DriftAccessor(tables: const <Type>[Comments])
class CommentsDao extends DatabaseAccessor<AppDatabase>
    with _$CommentsDaoMixin {
  final AppDatabase database;
  CommentsDao(this.database) : super(database);

  Future<void> todo() async => select(comments).get();
}
