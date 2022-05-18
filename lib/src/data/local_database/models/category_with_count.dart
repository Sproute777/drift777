import '../local_database.dart';

class CategoryWithCount {
  CategoryWithCount(this.category, this.count);

  final Category? category;
  final int count; // amount of entries in this category
}
