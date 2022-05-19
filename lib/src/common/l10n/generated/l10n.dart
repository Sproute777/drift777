// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Lang {
  Lang();

  static Lang? _current;

  static Lang get current {
    assert(_current != null,
        'No instance of Lang was loaded. Try to initialize the Lang delegate before accessing Lang.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Lang> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Lang();
      Lang._current = instance;

      return instance;
    });
  }

  static Lang of(BuildContext context) {
    final instance = Lang.maybeOf(context);
    assert(instance != null,
        'No instance of Lang present in the widget tree. Did you add Lang.delegate in localizationsDelegates?');
    return instance!;
  }

  static Lang? maybeOf(BuildContext context) {
    return Localizations.of<Lang>(context, Lang);
  }

  /// `Flutter Todos`
  String get todosOverviewAppBarTitle {
    return Intl.message(
      'Flutter Todos',
      name: 'todosOverviewAppBarTitle',
      desc: 'Title text shown in the AppBar of the Todos Overview Page',
      args: [],
    );
  }

  /// `Filter`
  String get todosOverviewFilterTooltip {
    return Intl.message(
      'Filter',
      name: 'todosOverviewFilterTooltip',
      desc:
          'Tooltip text shown in the filter dropdown of the Todos Overview Page',
      args: [],
    );
  }

  /// `All`
  String get todosOverviewFilterAll {
    return Intl.message(
      'All',
      name: 'todosOverviewFilterAll',
      desc:
          'Text shown in the filter dropdown of the Todos Overview Page for the option to display all todos',
      args: [],
    );
  }

  /// `Active only`
  String get todosOverviewFilterActiveOnly {
    return Intl.message(
      'Active only',
      name: 'todosOverviewFilterActiveOnly',
      desc:
          'Text shown in the filter dropdown of the Todos Overview Page for the option to display active todos only',
      args: [],
    );
  }

  /// `Completed only`
  String get todosOverviewFilterCompletedOnly {
    return Intl.message(
      'Completed only',
      name: 'todosOverviewFilterCompletedOnly',
      desc:
          'Text shown in the filter dropdown of the Todos Overview Page for the option to display completed todos only',
      args: [],
    );
  }

  /// `Mark all complete`
  String get todosOverviewMarkAllCompleteButtonText {
    return Intl.message(
      'Mark all complete',
      name: 'todosOverviewMarkAllCompleteButtonText',
      desc:
          'Button text shown in the options dropdown of the Todos Overview Page that marks all current todos as complete',
      args: [],
    );
  }

  /// `Clear completed`
  String get todosOverviewClearCompletedButtonText {
    return Intl.message(
      'Clear completed',
      name: 'todosOverviewClearCompletedButtonText',
      desc:
          'Button text shown in the options dropdown of the Todos Overview Page that deletes all completed todos',
      args: [],
    );
  }

  /// `No todos found with the selected filters.`
  String get todosOverviewEmptyText {
    return Intl.message(
      'No todos found with the selected filters.',
      name: 'todosOverviewEmptyText',
      desc:
          'Text shown in the Todos Overview Page when no todos are found with the selected filters',
      args: [],
    );
  }

  /// `Todo "{todoTitle}" deleted.`
  String todosOverviewTodoDeletedSnackbarText(Object todoTitle) {
    return Intl.message(
      'Todo "$todoTitle" deleted.',
      name: 'todosOverviewTodoDeletedSnackbarText',
      desc:
          'Snackbar text shown when a todo is deleted from the Todos Overview Page',
      args: [todoTitle],
    );
  }

  /// `Undo`
  String get todosOverviewUndoDeletionButtonText {
    return Intl.message(
      'Undo',
      name: 'todosOverviewUndoDeletionButtonText',
      desc:
          'Button text shown in the snackbar that undoes a deletion of a todo',
      args: [],
    );
  }

  /// `An error occurred while loading todos.`
  String get todosOverviewErrorSnackbarText {
    return Intl.message(
      'An error occurred while loading todos.',
      name: 'todosOverviewErrorSnackbarText',
      desc: 'Snackbar text shown when an error occurs while loading todos',
      args: [],
    );
  }

  /// `Options`
  String get todosOverviewOptionsTooltip {
    return Intl.message(
      'Options',
      name: 'todosOverviewOptionsTooltip',
      desc:
          'Tooltip text shown in the options dropdown of the Todos Overview Page',
      args: [],
    );
  }

  /// `Mark all as completed`
  String get todosOverviewOptionsMarkAllComplete {
    return Intl.message(
      'Mark all as completed',
      name: 'todosOverviewOptionsMarkAllComplete',
      desc:
          'Button text shown in the options dropdown of the Todos Overview Page that marks all todos as complete',
      args: [],
    );
  }

  /// `Mark all as incomplete`
  String get todosOverviewOptionsMarkAllIncomplete {
    return Intl.message(
      'Mark all as incomplete',
      name: 'todosOverviewOptionsMarkAllIncomplete',
      desc:
          'Button text shown in the options dropdown of the Todos Overview Page that marks all todos as incomplete',
      args: [],
    );
  }

  /// `Clear completed`
  String get todosOverviewOptionsClearCompleted {
    return Intl.message(
      'Clear completed',
      name: 'todosOverviewOptionsClearCompleted',
      desc:
          'Button text shown in the options dropdown of the Todos Overview Page that deletes all completed todos',
      args: [],
    );
  }

  /// `Todo Details`
  String get todoDetailsAppBarTitle {
    return Intl.message(
      'Todo Details',
      name: 'todoDetailsAppBarTitle',
      desc: 'Title text shown in the AppBar of the Todo Details Page',
      args: [],
    );
  }

  /// `Delete`
  String get todoDetailsDeleteButtonTooltip {
    return Intl.message(
      'Delete',
      name: 'todoDetailsDeleteButtonTooltip',
      desc: 'Tooltip text shown in the delete button on the Todo Details Page',
      args: [],
    );
  }

  /// `Edit`
  String get todoDetailsEditButtonTooltip {
    return Intl.message(
      'Edit',
      name: 'todoDetailsEditButtonTooltip',
      desc: 'Tooltip text shown in the edit button on the Todo Details Page',
      args: [],
    );
  }

  /// `Edit Todo`
  String get editTodoEditAppBarTitle {
    return Intl.message(
      'Edit Todo',
      name: 'editTodoEditAppBarTitle',
      desc:
          'Title text shown in the AppBar of the Todo Edit Page when editing an existing todo',
      args: [],
    );
  }

  /// `Add Todo`
  String get editTodoAddAppBarTitle {
    return Intl.message(
      'Add Todo',
      name: 'editTodoAddAppBarTitle',
      desc:
          'Title text shown in the AppBar of the Todo Edit Page when adding a new todo',
      args: [],
    );
  }

  /// `Title`
  String get editTodoTitleLabel {
    return Intl.message(
      'Title',
      name: 'editTodoTitleLabel',
      desc: 'Label text shown in the title input field of the Todo Edit Page',
      args: [],
    );
  }

  /// `Description`
  String get editTodoDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'editTodoDescriptionLabel',
      desc:
          'Label text shown in the description input field of the Todo Edit Page',
      args: [],
    );
  }

  /// `Save changes`
  String get editTodoSaveButtonTooltip {
    return Intl.message(
      'Save changes',
      name: 'editTodoSaveButtonTooltip',
      desc: 'Tooltip text shown in the save button on the Todo Edit Page',
      args: [],
    );
  }

  /// `Stats`
  String get statsAppBarTitle {
    return Intl.message(
      'Stats',
      name: 'statsAppBarTitle',
      desc: 'Title text shown in the AppBar of the Stats Page',
      args: [],
    );
  }

  /// `Completed todos`
  String get statsCompletedTodoCountLabel {
    return Intl.message(
      'Completed todos',
      name: 'statsCompletedTodoCountLabel',
      desc:
          'Label text shown in the completed todos count section of the Stats Page',
      args: [],
    );
  }

  /// `Active todos`
  String get statsActiveTodoCountLabel {
    return Intl.message(
      'Active todos',
      name: 'statsActiveTodoCountLabel',
      desc:
          'Label text shown in the active todos count section of the Stats Page',
      args: [],
    );
  }

  /// `Some localized strings:`
  String get pageHomeListTitle {
    return Intl.message(
      'Some localized strings:',
      name: 'pageHomeListTitle',
      desc: '',
      args: [],
    );
  }

  /// `Welcome {name}`
  String pageHomeSamplePlaceholder(Object name) {
    return Intl.message(
      'Welcome $name',
      name: 'pageHomeSamplePlaceholder',
      desc: '',
      args: [name],
    );
  }

  /// `My name is {lastName}, {firstName} {lastName}`
  String pageHomeSamplePlaceholdersOrdered(Object firstName, Object lastName) {
    return Intl.message(
      'My name is $lastName, $firstName $lastName',
      name: 'pageHomeSamplePlaceholdersOrdered',
      desc: '',
      args: [firstName, lastName],
    );
  }

  /// `{howMany, plural, one{You have 1 message} other{You have {howMany} messages}}`
  String pageHomeSamplePlural(int howMany) {
    return Intl.plural(
      howMany,
      one: 'You have 1 message',
      other: 'You have $howMany messages',
      name: 'pageHomeSamplePlural',
      desc: '',
      args: [howMany],
    );
  }

  /// `Total: {total}`
  String pageHomeSampleTotalAmount(double total) {
    final NumberFormat totalNumberFormat = NumberFormat.currency(
        locale: Intl.getCurrentLocale(), symbol: '€', decimalDigits: 2);
    final String totalString = totalNumberFormat.format(total);

    return Intl.message(
      'Total: $totalString',
      name: 'pageHomeSampleTotalAmount',
      desc: '',
      args: [totalString],
    );
  }

  /// `Date: {date} Time: {time}`
  String pageHomeSampleCurrentDateTime(DateTime date, DateTime time) {
    final DateFormat dateDateFormat = DateFormat.yMd(Intl.getCurrentLocale());
    final String dateString = dateDateFormat.format(date);

    final DateFormat timeDateFormat = DateFormat.Hm(Intl.getCurrentLocale());
    final String timeString = timeDateFormat.format(time);

    return Intl.message(
      'Date: $dateString Time: $timeString',
      name: 'pageHomeSampleCurrentDateTime',
      desc: '',
      args: [dateString, timeString],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Lang> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Lang> load(Locale locale) => Lang.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
