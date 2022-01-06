import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/string_constants.dart';

class AppLanguage {
  /// Default language is VietNamese
  String currentLocale = StringContants.langCodeList[1];

  final _storage = const FlutterSecureStorage();

  Future<void> fetchLocale() async {
    late String? locale;
    try {
      locale = await _storage.read(key: StringContants.userLocale);
    } catch (e) {
      locale = StringContants.langCodeList[1];
    }
    currentLocale = locale ?? StringContants.langCodeList[1];
  }

  Future<void> changeLocale(int localeIndex) async {
    currentLocale = StringContants.langCodeList[localeIndex];
    try {
      await _storage.write(
        key: StringContants.userLocale,
        value: StringContants.langCodeList[localeIndex],
      );
    } catch (e) {
      Future.error('A error when write locale');
    }
  }
}
