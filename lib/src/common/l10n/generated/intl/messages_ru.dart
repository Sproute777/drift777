// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ru';

  static String m0(date, time) => "Date: ${date} Time: ${time}";

  static String m1(name) => "Welcome ${name}";

  static String m2(firstName, lastName) =>
      "My name is ${lastName}, ${firstName} ${lastName}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'You have 1 message', other: 'You have ${howMany} messages')}";

  static String m4(total) => "Total: ${total}";

  static String m5(todoTitle) => "Заметка \"${todoTitle}\" удалена.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "editTodoAddAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Добавить Заметку"),
        "editTodoDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("Описание"),
        "editTodoEditAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Редактировать заметку"),
        "editTodoSaveButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Сохранить изменения"),
        "editTodoTitleLabel": MessageLookupByLibrary.simpleMessage("Шапка"),
        "pageHomeListTitle":
            MessageLookupByLibrary.simpleMessage("Some localized strings:"),
        "pageHomeSampleCurrentDateTime": m0,
        "pageHomeSamplePlaceholder": m1,
        "pageHomeSamplePlaceholdersOrdered": m2,
        "pageHomeSamplePlural": m3,
        "pageHomeSampleTotalAmount": m4,
        "statsActiveTodoCountLabel":
            MessageLookupByLibrary.simpleMessage("Активные заметки"),
        "statsAppBarTitle": MessageLookupByLibrary.simpleMessage("Статистика"),
        "statsCompletedTodoCountLabel":
            MessageLookupByLibrary.simpleMessage("Завершенные заметки"),
        "todoDetailsAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Заметки подробно"),
        "todoDetailsDeleteButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Удалить"),
        "todoDetailsEditButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Редактировать"),
        "todosOverviewAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Flutter Заметки"),
        "todosOverviewClearCompletedButtonText":
            MessageLookupByLibrary.simpleMessage("Очистить завершенные"),
        "todosOverviewEmptyText": MessageLookupByLibrary.simpleMessage(
            "Не найдено заметок с установленым фильтром."),
        "todosOverviewErrorSnackbarText": MessageLookupByLibrary.simpleMessage(
            "Произошла ошибка при работе с заметкой."),
        "todosOverviewFilterActiveOnly":
            MessageLookupByLibrary.simpleMessage("Только активные"),
        "todosOverviewFilterAll": MessageLookupByLibrary.simpleMessage("Все"),
        "todosOverviewFilterCompletedOnly":
            MessageLookupByLibrary.simpleMessage("Только завершенные"),
        "todosOverviewFilterTooltip":
            MessageLookupByLibrary.simpleMessage("Фильтр"),
        "todosOverviewMarkAllCompleteButtonText":
            MessageLookupByLibrary.simpleMessage("Пометить как завершеные"),
        "todosOverviewOptionsClearCompleted":
            MessageLookupByLibrary.simpleMessage("Уборка завершена"),
        "todosOverviewOptionsMarkAllComplete":
            MessageLookupByLibrary.simpleMessage("Отметить все как завершеные"),
        "todosOverviewOptionsMarkAllIncomplete":
            MessageLookupByLibrary.simpleMessage("Очистить все отметки"),
        "todosOverviewOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Опции"),
        "todosOverviewTodoDeletedSnackbarText": m5,
        "todosOverviewUndoDeletionButtonText":
            MessageLookupByLibrary.simpleMessage("Вернутся")
      };
}
