import 'package:drift777/src/data/local_database/local_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../pages/home/home.dart';

class MyApp extends StatefulWidget {
  final Database database;
  final TodosDao dao;
  const MyApp({required this.database, required this.dao}) : super();
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    widget.database.close();
    widget.dao.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<Database>.value(
      value: widget.database,
      child: RepositoryProvider<TodosDao>.value(
        value: widget.dao,
        child: BlocProvider(
          create: (context) =>
              TodoCubit(RepositoryProvider.of<TodosDao>(context)),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.purple,
              typography: Typography.material2014(
                englishLike: Typography.englishLike2014,
                dense: Typography.dense2014,
                tall: Typography.tall2014,
              ),
            ),
            home: HomeScreen(),
          ),
        ),
      ),
    );
  }
}
