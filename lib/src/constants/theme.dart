import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './colors_constants.dart';

class AppFontWeight {
  static const thin = FontWeight.w100;
  static const extraLight = FontWeight.w200;
  static const light = FontWeight.w300;
  static const regular = FontWeight.w400;
  static const medium = FontWeight.w500;
  static const semiBold = FontWeight.w600;
  static const bold = FontWeight.w700;
  static const extraBold = FontWeight.w800;
  static const ultraBold = FontWeight.w900;
}

class AppTheme {
  /// light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorConstants.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      elevation: 0.0,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 26,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      headline3: TextStyle(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      headline5: TextStyle(
        fontSize: 18,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      headline6: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.medium,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.regular,
        color: Colors.black,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: AppFontWeight.regular,
        color: Colors.black,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: AppFontWeight.regular,
        color: Colors.black,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.black,
      size: 24.0,
    ),
  );

  /// dart theme
  static ThemeData dartTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: ColorConstants.primaryColor,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: Colors.black,
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 26,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline2: TextStyle(
        fontSize: 24,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline3: TextStyle(
        fontSize: 22,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline4: TextStyle(
        fontSize: 20,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline5: TextStyle(
        fontSize: 18,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      headline6: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.bold,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.medium,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
      subtitle1: TextStyle(
        fontSize: 14,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
      subtitle2: TextStyle(
        fontSize: 12,
        fontWeight: AppFontWeight.regular,
        color: Colors.white,
      ),
    ),
    iconTheme: const IconThemeData(
      color: Colors.white,
      size: 24.0,
    ),
  );
}
