abstract class ThemeEvent {}

class FetchThemeEvent extends ThemeEvent {}

class ChangeThemeEvent extends ThemeEvent {
  final int themeIndexSelected;
  ChangeThemeEvent(this.themeIndexSelected);
}
