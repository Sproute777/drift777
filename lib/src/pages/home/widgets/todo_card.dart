import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../data/local_database/local_database.dart';
import '../cubit/todo_bloc.dart';
import 'todo_edit_dialog.dart';

final DateFormat _format = DateFormat.yMMMd();

/// Card that displays an entry and an icon button to delete that entry
class TodoCard extends StatelessWidget {
  final TodoEntry entry;

  TodoCard(this.entry) : super(key: ObjectKey(entry.id));

  @override
  Widget build(BuildContext context) {
    Widget dueDate;
    if (entry.targetDate == null) {
      dueDate = GestureDetector(
        onTap: () {
          // BlocProvider.provideBloc(context).db.testTransaction(entry);
        },
        child: const Text(
          'No due date set',
          style: TextStyle(color: Colors.grey, fontSize: 12),
        ),
      );
    } else {
      dueDate = Text(
        _format.format(entry.targetDate!),
        style: const TextStyle(fontSize: 12),
      );
    }

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(entry.content),
                  dueDate,
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit),
              color: Colors.blue,
              onPressed: () {
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (ctx) => TodoEditDialog(entry: entry),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              color: Colors.red,
              onPressed: () {
                context.read<TodoCubit>().deleteTodo(entry);
                // RepositoryProvider.of<TodoRepo>(context).deleteEntry(entry);
              },
            )
          ],
        ),
      ),
    );
  }
}
