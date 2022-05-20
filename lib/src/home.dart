import 'package:drift/drift.dart';
import 'package:drift777/src/data/local_datasource/local_datasource.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/local_datasource/dao/dao.dart';
import 'data/todos_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('text'),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final repo = await RepositoryProvider.of<TodosRepository>(context);
        await repo.clearUsers();

        await repo.saveUsers([
          UsersCompanion(
            id: Value(333),
            username: Value('1'),
            name: Value('name1'),
            email: Value('1'),
            phone: Value('1'),
            website: Value('1'),
          ),
          UsersCompanion(
            id: Value(664),
            username: Value('1'),
            name: Value('name1'),
            email: Value('1'),
            phone: Value('1'),
            website: Value('1'),
          ),
        ]);
        await repo.saveAddress(AddressesCompanion(
          userId: Value(333),
          street: Value('4'),
          suite: Value('4'),
          city: Value('4'),
          zipcode: Value('4'),
          lat: Value('lat'),
          lng: Value('lng'),
        ));
        await repo.saveCompany(CompaniesCompanion(
          userId: Value(333),
          name: Value('44'),
          catchPhrase: Value('4'),
          bs: Value('ps'),
        ));

        final users = await repo.fetchUsers();
        final addresses = await repo.fetchAddresses();
        final companies = await repo.fetchCompanies();
        print('-------- ${users.toString()}');
        print('-------- ${addresses.toString()}');
        print('-------- ${companies.toString()}');

        await repo.deleteUser(333);

        final users2 = await repo.fetchUsers();
        final addresses2 = await repo.fetchAddresses();
        final companies2 = await repo.fetchCompanies();

        print('--------2 ${users2.toString()}');
        print('--------2 ${addresses2.toString()}');
        print('--------2 ${companies2.toString()}');
      }),
    );
  }
}
