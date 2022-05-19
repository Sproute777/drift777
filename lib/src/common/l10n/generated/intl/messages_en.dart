// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(date, time) => "Date: ${date} Time: ${time}";

  static String m1(name) => "Welcome ${name}";

  static String m2(firstName, lastName) =>
      "My name is ${lastName}, ${firstName} ${lastName}";

  static String m3(howMany) =>
      "${Intl.plural(howMany, one: 'You have 1 message', other: 'You have ${howMany} messages')}";

  static String m4(total) => "Total: ${total}";

  static String m5(todoTitle) => "Todo \"${todoTitle}\" deleted.";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "editTodoAddAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Add Todo"),
        "editTodoDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("Description"),
        "editTodoEditAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Edit Todo"),
        "editTodoSaveButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Save changes"),
        "editTodoTitleLabel": MessageLookupByLibrary.simpleMessage("Title"),
        "pageHomeListTitle":
            MessageLookupByLibrary.simpleMessage("Some localized strings:"),
        "pageHomeSampleCurrentDateTime": m0,
        "pageHomeSamplePlaceholder": m1,
        "pageHomeSamplePlaceholdersOrdered": m2,
        "pageHomeSamplePlural": m3,
        "pageHomeSampleTotalAmount": m4,
        "statsActiveTodoCountLabel":
            MessageLookupByLibrary.simpleMessage("Active todos"),
        "statsAppBarTitle": MessageLookupByLibrary.simpleMessage("Stats"),
        "statsCompletedTodoCountLabel":
            MessageLookupByLibrary.simpleMessage("Completed todos"),
        "todoDetailsAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Todo Details"),
        "todoDetailsDeleteButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Delete"),
        "todoDetailsEditButtonTooltip":
            MessageLookupByLibrary.simpleMessage("Edit"),
        "todosOverviewAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Flutter Todos"),
        "todosOverviewClearCompletedButtonText":
            MessageLookupByLibrary.simpleMessage("Clear completed"),
        "todosOverviewEmptyText": MessageLookupByLibrary.simpleMessage(
            "No todos found with the selected filters."),
        "todosOverviewErrorSnackbarText": MessageLookupByLibrary.simpleMessage(
            "An error occurred while loading todos."),
        "todosOverviewFilterActiveOnly":
            MessageLookupByLibrary.simpleMessage("Active only"),
        "todosOverviewFilterAll": MessageLookupByLibrary.simpleMessage("All"),
        "todosOverviewFilterCompletedOnly":
            MessageLookupByLibrary.simpleMessage("Completed only"),
        "todosOverviewFilterTooltip":
            MessageLookupByLibrary.simpleMessage("Filter"),
        "todosOverviewMarkAllCompleteButtonText":
            MessageLookupByLibrary.simpleMessage("Mark all complete"),
        "todosOverviewOptionsClearCompleted":
            MessageLookupByLibrary.simpleMessage("Clear completed"),
        "todosOverviewOptionsMarkAllComplete":
            MessageLookupByLibrary.simpleMessage("Mark all as completed"),
        "todosOverviewOptionsMarkAllIncomplete":
            MessageLookupByLibrary.simpleMessage("Mark all as incomplete"),
        "todosOverviewOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Options"),
        "todosOverviewTodoDeletedSnackbarText": m5,
        "todosOverviewUndoDeletionButtonText":
            MessageLookupByLibrary.simpleMessage("Undo")
      };
}
