import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'ar', 'es', 'it'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? arText = '',
    String? esText = '',
    String? itText = '',
  }) =>
      [enText, frText, arText, esText, itText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

/// Used if the locale is not supported by GlobalMaterialLocalizations.
class FallbackMaterialLocalizationDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const FallbackMaterialLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<MaterialLocalizations> load(Locale locale) async =>
      SynchronousFuture<MaterialLocalizations>(
        const DefaultMaterialLocalizations(),
      );

  @override
  bool shouldReload(FallbackMaterialLocalizationDelegate old) => false;
}

/// Used if the locale is not supported by GlobalCupertinoLocalizations.
class FallbackCupertinoLocalizationDelegate
    extends LocalizationsDelegate<CupertinoLocalizations> {
  const FallbackCupertinoLocalizationDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<CupertinoLocalizations> load(Locale locale) =>
      SynchronousFuture<CupertinoLocalizations>(
        const DefaultCupertinoLocalizations(),
      );

  @override
  bool shouldReload(FallbackCupertinoLocalizationDelegate old) => false;
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => _isSupportedLocale(locale);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

bool _isSupportedLocale(Locale locale) {
  final language = locale.toString();
  return FFLocalizations.languages().contains(
    language.endsWith('_')
        ? language.substring(0, language.length - 1)
        : language,
  );
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // booking_stats
  {
    'frk0oi3o': {
      'en': 'Parking Spot Availability Today',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ijuot70u': {
      'en': 'Booked',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '4glf1kci': {
      'en': 'Available',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'eu37tpie': {
      'en': 'Home',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // neuchatel
  {
    '21jschxk': {
      'en': 'Neuchatel',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'kcozyfys': {
      'en': '1 ',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '7p7hp5z9': {
      'en': '2',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'y8y9ebvs': {
      'en': '3',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '6h1r8ifn': {
      'en': '4',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'gpheh6qi': {
      'en': '5',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'iwefk9va': {
      'en': '6',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ry9gu419': {
      'en': '7',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'li1bmya7': {
      'en': '8',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'lcclx3kd': {
      'en': '9',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ik95bdx6': {
      'en': '10',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '8vbfjyo0': {
      'en': '11',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '6t8qckkb': {
      'en': '12',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'pqxbkzgl': {
      'en': 'Legend',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '3xety49q': {
      'en': 'Occupied spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'dbs3zma3': {
      'en': 'Free spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'x2idjo3l': {
      'en': 'Add a spot',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'e154xwob': {
      'en': 'Delete a spot',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'j99l7mu3': {
      'en': 'Return to dashboard',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ak0m09yg': {
      'en': 'Booking',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // constance
  {
    'l0bdsgeb': {
      'en': 'Constance',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '99nwwouz': {
      'en': '1 ',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '7q5rjhwt': {
      'en': '2',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'est9nwx0': {
      'en': '3',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1d10yrkp': {
      'en': '4',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'mj33w87h': {
      'en': '5',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ovt4u6g5': {
      'en': '6',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ajn1d0xc': {
      'en': '7',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'iqgfclrz': {
      'en': '8',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'lsarwirp': {
      'en': '9',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '48f40s7g': {
      'en': 'Legend',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'qwijlr7v': {
      'en': 'Occupied spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'nnb4myws': {
      'en': 'Free spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'wpta8x9g': {
      'en': 'Return to dashboard',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '646exwdg': {
      'en': 'Home',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // biwa
  {
    '70bq876v': {
      'en': 'Biwa',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '62tr9s5c': {
      'en': '1 ',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ehsy9ecl': {
      'en': '2',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ucn2j9hl': {
      'en': '3',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ujhdkc91': {
      'en': '4',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'kv096t76': {
      'en': '5',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'gj2ukkf8': {
      'en': '6',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'cdvm364e': {
      'en': '7',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'sd97owig': {
      'en': '8',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'pnu6jos3': {
      'en': '9',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'fp12ys2b': {
      'en': 'Legend',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'd7v99jil': {
      'en': 'Occupied spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'jfdmlm9c': {
      'en': 'Free spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'vy03ucxq': {
      'en': 'Return to dashboard',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'f4e3irxh': {
      'en': 'Home',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // dashboard
  {
    'npnmqk9k': {
      'en': 'Manage users',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'n64lgslj': {
      'en': 'Manage parking spots',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'll0b9vx3': {
      'en': 'Booking stats',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'mox3rdf5': {
      'en': 'Log out',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'p99pne4r': {
      'en': 'Welcome Admin !',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1qcry910': {
      'en': 'Manage your parking',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '2b7stg7f': {
      'en': 'Home',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // users
  {
    '69k2elep': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '8x9824vu': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'qvcbz9ck': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'f053fwhw': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'orzhv8rk': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'tgunwlod': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'nyoeo26w': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '7admv3fj': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'patcdmun': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '59rvle28': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '2xqipb8t': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '0gdhuq4n': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'cqn7tvl8': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1idiua73': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'hwqpufp4': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '3dw6fe6i': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '6fvkyzgl': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'eohkhlew': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'c75qiip0': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '115a49df': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'tv0jyryt': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'gnpdvilp': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'l2uyo3ei': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'n8lpa6z0': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'h43gp28o': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'tcas6ztl': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'gyydu8ty': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'aj4anwnj': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'd2viw7h2': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '77a2v3o6': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'dsv75vbq': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'w8g3d8zl': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '7h3szni4': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'q667ubd1': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'cxf4bjvi': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'es99mk50': {
      'en': 'Full name :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'wehz9kp9': {
      'en': 'ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'x8s4jitu': {
      'en': 'Email :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'z7xdrdwy': {
      'en': 'Phone Number :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'cdxgw7ti': {
      'en': 'Booked Spot ID :',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'meawtr12': {
      'en': 'Delete user',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'm9lrhubd': {
      'en': 'Cancel reservation',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '50n1tum2': {
      'en': 'OnSpot users',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'tayct5ou': {
      'en': 'Home',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // login
  {
    'nhn51muk': {
      'en': 'Admin Login',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ooz877qs': {
      'en': 'Please enter your credentials to access the admin dashboard',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'srztfuxv': {
      'en': 'Email or password invalid',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'rgddupeg': {
      'en': 'Email',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'hybolds5': {
      'en': 'Enter your email',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '3034a3sn': {
      'en': 'Password',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '0qyz56v5': {
      'en': 'Enter your password',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'sqdshc59': {
      'en': 'Sign In',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'lo7co0pt': {
      'en': 'Forgot Password?',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
  // Miscellaneous
  {
    '9h9ga6wp': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ywtsourz': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '7ryat1g6': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1mecvps1': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ipxtaf1l': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '5r2zflsf': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1zlna7zt': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'n32qil71': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '9jrdh327': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '5amohl08': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'a1ehciy7': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'ne3sngl6': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'qmb2q3qn': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'dyg9n3n3': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '1wwiwnwk': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'jjpufmfe': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'mwlrn3e9': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '13fhbkqn': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'brp2m0ou': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'uwprmibw': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'o6cas2jd': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'p86v6vzx': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'aeycpfvt': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    '0dln78ml': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
    'rspl1qva': {
      'en': '',
      'ar': '',
      'es': '',
      'fr': '',
      'it': '',
    },
  },
].reduce((a, b) => a..addAll(b));
