import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';

import '../../localizations/app_language.dart';
import './languages_event.dart';
import './languages_state.dart';

class LanguagesBloc extends Bloc<LanguagesEvent, LanguagesState> {
  final AppLanguage? appLanguage;
  LanguagesBloc({this.appLanguage}) : super(LanguagesInitial()) {
    on<LanguagesEvent>((event, emit) async {
      if (event is FetchLanguage) {
        emit(await fetchLanguage(event));
      } else if (event is ChangeLanguage) {
        emit(await changeLanguage(event));
      }
    });
  }

  Future<LanguagesState> fetchLanguage(FetchLanguage event) async {
    await appLanguage!.fetchLocale();
    return LanguageComplete(Locale(appLanguage!.currentLocale));
  }

  Future<LanguagesState> changeLanguage(ChangeLanguage event) async {
    await appLanguage!.changeLocale(event.localeIndex);
    return LanguageComplete(Locale(appLanguage!.currentLocale));
  }
}
