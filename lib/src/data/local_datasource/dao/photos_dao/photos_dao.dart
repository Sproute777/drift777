import 'dart:async';

import 'package:drift/drift.dart';
import '../../local_datasource.dart';

part 'photos_dao.g.dart';

@DriftAccessor(tables: const <Type>[Photos])
class PhotosDao extends DatabaseAccessor<AppDatabase> with _$PhotosDaoMixin {
  final AppDatabase database;
  PhotosDao(this.database) : super(database);

  Future<void> todo() async => select(photos).get();
}
