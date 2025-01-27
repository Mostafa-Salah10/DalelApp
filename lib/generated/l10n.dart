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

  /// `Welcome !`
  String get welcome {
    return Intl.message(
      'Welcome !',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back !`
  String get welcomeback {
    return Intl.message(
      'Welcome Back !',
      name: 'welcomeback',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Email Address`
  String get emailAddress {
    return Intl.message(
      'Email Address',
      name: 'emailAddress',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get pass {
    return Intl.message(
      'Password',
      name: 'pass',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forgetPass {
    return Intl.message(
      'Forget Password ?',
      name: 'forgetPass',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get forgetPassagain {
    return Intl.message(
      'Forget Password',
      name: 'forgetPassagain',
      desc: '',
      args: [],
    );
  }

  /// `I have agree to our`
  String get agreeTerms {
    return Intl.message(
      'I have agree to our',
      name: 'agreeTerms',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get signUp {
    return Intl.message(
      'Sign Up',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Sign In`
  String get signIn {
    return Intl.message(
      'Sign In',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Already i hava an account ? `
  String get havaAccount {
    return Intl.message(
      'Already i hava an account ? ',
      name: 'havaAccount',
      desc: '',
      args: [],
    );
  }

  /// ` Terms and Condition`
  String get terms {
    return Intl.message(
      ' Terms and Condition',
      name: 'terms',
      desc: '',
      args: [],
    );
  }

  /// `Don't hava an account ? `
  String get doNotHavaAccount {
    return Intl.message(
      'Don\'t hava an account ? ',
      name: 'doNotHavaAccount',
      desc: '',
      args: [],
    );
  }

  /// `Enter your registered email below to receive password reset instruction`
  String get forgetdecraption {
    return Intl.message(
      'Enter your registered email below to receive password reset instruction',
      name: 'forgetdecraption',
      desc: '',
      args: [],
    );
  }

  /// `Send Verification Link`
  String get sentRest {
    return Intl.message(
      'Send Verification Link',
      name: 'sentRest',
      desc: '',
      args: [],
    );
  }

  /// `Historical periods`
  String get historicalperiods {
    return Intl.message(
      'Historical periods',
      name: 'historicalperiods',
      desc: '',
      args: [],
    );
  }

  /// `Historical Characters`
  String get historicalchar {
    return Intl.message(
      'Historical Characters',
      name: 'historicalchar',
      desc: '',
      args: [],
    );
  }

  /// `Historical Souvenirs`
  String get historicalsouvenirs {
    return Intl.message(
      'Historical Souvenirs',
      name: 'historicalsouvenirs',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editprofile {
    return Intl.message(
      'Edit Profile',
      name: 'editprofile',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notifacation {
    return Intl.message(
      'Notification',
      name: 'notifacation',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get Account {
    return Intl.message(
      'Account',
      name: 'Account',
      desc: '',
      args: [],
    );
  }

  /// `General`
  String get general {
    return Intl.message(
      'General',
      name: 'general',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get setting {
    return Intl.message(
      'Settings',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Security`
  String get security {
    return Intl.message(
      'Security',
      name: 'security',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
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
