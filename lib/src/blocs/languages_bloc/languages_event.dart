abstract class LanguagesEvent {}

class FetchLanguage extends LanguagesEvent {}

class ChangeLanguage extends LanguagesEvent {
  final int localeIndex;

  ChangeLanguage(this.localeIndex);
}
