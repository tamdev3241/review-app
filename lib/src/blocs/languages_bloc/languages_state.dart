import 'package:flutter/widgets.dart';

abstract class LanguagesState {}

class LanguagesInitial extends LanguagesState {}

class LanguageComplete extends LanguagesState {
  final Locale locale;
  LanguageComplete(this.locale);
}
