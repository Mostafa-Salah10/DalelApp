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

  /// `Dalel`
  String get appName {
    return Intl.message(
      'Dalel',
      name: 'appName',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skipText {
    return Intl.message(
      'Skip',
      name: 'skipText',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Create an Account`
  String get createAcounte {
    return Intl.message(
      'Create an Account',
      name: 'createAcounte',
      desc: '',
      args: [],
    );
  }

  /// `Loging Now`
  String get loginNow {
    return Intl.message(
      'Loging Now',
      name: 'loginNow',
      desc: '',
      args: [],
    );
  }

  /// `Explore The history with Dalel in a smart way`
  String get tileOnboarding1 {
    return Intl.message(
      'Explore The history with Dalel in a smart way',
      name: 'tileOnboarding1',
      desc: '',
      args: [],
    );
  }

  /// `From every place\n on earth`
  String get tileOnboarding2 {
    return Intl.message(
      'From every place\n on earth',
      name: 'tileOnboarding2',
      desc: '',
      args: [],
    );
  }

  /// `Using modern AI technology for better user experience`
  String get tileOnboarding3 {
    return Intl.message(
      'Using modern AI technology for better user experience',
      name: 'tileOnboarding3',
      desc: '',
      args: [],
    );
  }

  /// `Using our app’s history libraries you can find many historical periods `
  String get descraptionOnboarding1 {
    return Intl.message(
      'Using our app’s history libraries you can find many historical periods ',
      name: 'descraptionOnboarding1',
      desc: '',
      args: [],
    );
  }

  /// `A big variety of ancient places from all over the world`
  String get descraptionOnboarding2 {
    return Intl.message(
      'A big variety of ancient places from all over the world',
      name: 'descraptionOnboarding2',
      desc: '',
      args: [],
    );
  }

  /// `AI provide recommendations and helps you to continue the search journey`
  String get descraptionOnboarding3 {
    return Intl.message(
      'AI provide recommendations and helps you to continue the search journey',
      name: 'descraptionOnboarding3',
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
