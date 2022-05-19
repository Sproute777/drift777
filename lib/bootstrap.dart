import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import 'src/app.dart';
import 'src/common/app_observer/app_observer.dart';
import 'src/data/local_datasource/dao/_dao.dart';
import 'src/data/local_datasource/dao/todos_api_contract.dart';
import 'src/data/todos_repository.dart';
// import 'src/src/app.dart';
// import 'src/src/common/app_observer/app_observer.dart';
// import 'src/src/data/local/api/todos_api_contract.dart';
// import 'src/src/data/todos_repository.dart';

void bootstrap({required TodosDao todosApi}) {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final todosRepository = TodosRepository(todosApi: todosApi);

  runZonedGuarded(
    () async {
      await BlocOverrides.runZoned(
        () async => runApp(
          App(todosRepository: todosRepository),
        ),
        blocObserver: AppBlocObserver(),
      );
    },
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
