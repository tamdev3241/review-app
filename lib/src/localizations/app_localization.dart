import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class AppLocalization {
  final Locale locale;
  static const supportedLocale = [
    Locale('vi'),
    Locale('en'),
  ];
  Map<String, String> _localizationString = {};

  AppLocalization(this.locale);

  static const LocalizationsDelegate<AppLocalization> delegate =
      _AppLocalizationDelege();

  static AppLocalization of(BuildContext context) => Localizations.of(
        context,
        AppLocalization,
      );

  Future<bool> load() async {
    final jsonStr =
        await rootBundle.loadString('assets/langs/${locale.languageCode}.json');
    Map<String, dynamic> json = jsonDecode(jsonStr);

    _localizationString =
        json.map((key, value) => MapEntry(key, value.toString()));
    return true;
  }

  String locaized(String key) => _localizationString[key] ?? key;
}

class _AppLocalizationDelege extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelege();

  @override
  bool isSupported(Locale locale) =>
      AppLocalization.supportedLocale.contains(locale);

  @override
  Future<AppLocalization> load(Locale locale) async {
    final localizations = AppLocalization(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalization> old) =>
      false;
}
