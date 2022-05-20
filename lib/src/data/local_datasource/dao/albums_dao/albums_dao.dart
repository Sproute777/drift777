import 'dart:async';

import 'package:drift/drift.dart';
import '../../local_datasource.dart';

part 'albums_dao.g.dart';

@DriftAccessor(tables: const <Type>[Albums])
class AlbumsDao extends DatabaseAccessor<AppDatabase> with _$AlbumsDaoMixin {
  final AppDatabase database;
  AlbumsDao(this.database) : super(database);

  Future<void> todo() async => select(albums).get();
}
