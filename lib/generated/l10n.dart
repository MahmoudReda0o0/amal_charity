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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Alamal Charity`
  String get title {
    return Intl.message(
      'Alamal Charity',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Family`
  String get family {
    return Intl.message(
      'Family',
      name: 'family',
      desc: '',
      args: [],
    );
  }

  /// `Families list`
  String get families_list {
    return Intl.message(
      'Families list',
      name: 'families_list',
      desc: '',
      args: [],
    );
  }

  /// `Name \ `
  String get name {
    return Intl.message(
      'Name \\ ',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Adress \ `
  String get address {
    return Intl.message(
      'Adress \\ ',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Phone \ `
  String get phone {
    return Intl.message(
      'Phone \\ ',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Husband name`
  String get husband_name {
    return Intl.message(
      'Husband name',
      name: 'husband_name',
      desc: '',
      args: [],
    );
  }

  /// `Wife name`
  String get wife_name {
    return Intl.message(
      'Wife name',
      name: 'wife_name',
      desc: '',
      args: [],
    );
  }

  /// `Job`
  String get job {
    return Intl.message(
      'Job',
      name: 'job',
      desc: '',
      args: [],
    );
  }

  /// `Number of kids`
  String get number_of_kids {
    return Intl.message(
      'Number of kids',
      name: 'number_of_kids',
      desc: '',
      args: [],
    );
  }

  /// `Monthly salary`
  String get monthly_money {
    return Intl.message(
      'Monthly salary',
      name: 'monthly_money',
      desc: '',
      args: [],
    );
  }

  /// `number of people in family`
  String get number_of_people_in_family {
    return Intl.message(
      'number of people in family',
      name: 'number_of_people_in_family',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
