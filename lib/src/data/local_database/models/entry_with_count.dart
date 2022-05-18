/*-----------------------------------------------------------------------------*/

import '../local_database.dart';

class EntryWithCategory {
  EntryWithCategory(this.entry, this.category);

  final TodoEntry entry;
  final Category? category;
}
