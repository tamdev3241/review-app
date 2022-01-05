import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/string_constants.dart';

class AppLanguage {
  /// Default language is VietNamese
  String currentLocale = StringContants.langList[1];

  final _storage = const FlutterSecureStorage();

  Future<void> fetchLocale() async {
    final locale = await _storage.read(key: StringContants.userLocale);
    currentLocale = locale ?? StringContants.langList[1];
  }

  Future<void> changeLocale(int localeIndex) async {
    currentLocale = StringContants.langList[localeIndex];
    await _storage.write(
      key: StringContants.userLocale,
      value: StringContants.langList[localeIndex],
    );
  }
}
