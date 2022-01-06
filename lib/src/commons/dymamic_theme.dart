import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../constants/string_constants.dart';
import '../constants/theme.dart';

class AppThemeStorage {
  String currentTheme = StringContants.themeList[0];
  final _storage = const FlutterSecureStorage();

  Future<ThemeData> fetchTheme() async {
    late String? theme;
    try {
      theme = await _storage.read(key: StringContants.appTheme);
    } catch (e) {
      theme = StringContants.themeList[0];
    }
    currentTheme = theme ?? StringContants.themeList[0];
    return currentTheme.contains(StringContants.themeList[0])
        ? AppTheme.lightTheme
        : AppTheme.dartTheme;
  }

  Future<ThemeData> changeTheme(int themeIndex) async {
    late final ThemeData theme;
    currentTheme = StringContants.themeList[themeIndex];
    try {
      theme = await _storage
          .write(
        key: StringContants.appTheme,
        value: StringContants.themeList[themeIndex],
      )
          .then<ThemeData>((_) {
        return themeIndex == 0 ? AppTheme.lightTheme : AppTheme.dartTheme;
      });
    } catch (e) {
      Future.error('A error when write theme');
      return themeIndex == 1 ? AppTheme.lightTheme : AppTheme.dartTheme;
    }
    return theme;
  }
}
