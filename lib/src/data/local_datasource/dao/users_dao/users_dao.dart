import 'dart:async';

import 'package:drift/drift.dart';
import '../../local_datasource.dart';

part 'users_dao.g.dart';

@DriftAccessor(tables: const [Users, Addresses, Companies])
class UsersDao extends DatabaseAccessor<AppDatabase> with _$UsersDaoMixin {
  final AppDatabase database;
  UsersDao(this.database) : super(database) {}

  // -------------------------------------------------------------------------//
  Future<void> clearUsers() async {
    await delete(users).go();
    await delete(addresses).go();
    await delete(companies).go();
  }

  Future<void> saveUser(UsersCompanion user) async {
    await into(users).insert(user, mode: InsertMode.replace);
  }

  Future<void> deleteUser(int id) async => await users
      .deleteWhere((t) => t.id.equals(id))
      .then((_) => addresses.deleteWhere((adr) => adr.userId.equals(id)))
      .then(
        (value) => companies.deleteWhere(
          (com) => com.userId.equals(id),
        ),
      );

// ----------------------------------------------------------------------------//

  Future<void> saveUsers(List<UsersCompanion> listUsers) async {
    await batch((b) {
      Future.forEach(
        listUsers,
        ((UsersCompanion u) async => b.insert(
            users,
            UsersCompanion.insert(
              id: u.id,
              name: u.name.value,
              username: u.username.value,
              email: u.email.value,
              phone: u.phone.value,
              website: u.website.value,
            ),
            mode: InsertMode.replace)),
      );
    });
  }

  Future<void> saveUsersFromMap(List<Map<String, dynamic>> listMap) async {
    final listUsers = listMap.map((e) => User.fromJson(e));
    batch(
      (b) => Future.forEach(
        listUsers,
        (User u) => b.insert(
            users,
            UsersCompanion.insert(
              id: Value(u.id),
              name: u.name,
              username: u.username,
              email: u.email,
              phone: u.phone,
              website: u.website,
            ),
            mode: InsertMode.replace),
      ),
    );
  }
  // -------------------------------------------------------------------------//

  Future<void> saveAddress(AddressesCompanion address) async {
    await into(addresses).insert(address, mode: InsertMode.replace);
  }

  Future<List<Address>> fetchAddresses() async => await select(addresses).get();

  // -------------------------------------------------------------------------//

  Future<void> saveCompany(CompaniesCompanion company) async {
    await into(companies).insert(company, mode: InsertMode.replace);
  }

  Future<List<Company>> fetchCompanies() async => await select(companies).get();
// ---------------------------------------------------------------------------//
  Future<List<User>> fetchUsers() async {
    return await select(users).get();
  }
}
