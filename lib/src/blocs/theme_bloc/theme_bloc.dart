import 'package:bloc/bloc.dart';

import '../../commons/dymamic_theme.dart';
import 'theme_event.dart';
import 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final AppThemeStorage appThemeStorage;
  ThemeBloc({required this.appThemeStorage}) : super(ThemeInitial()) {
    on<ThemeEvent>((event, emit) async {
      if (event is FetchThemeEvent) {
        emit(await fetchTheme());
      } else if (event is ChangeThemeEvent) {
        emit(await changeTheme(event));
      }
    });
  }

  Future<ThemeState> fetchTheme() async {
    final theme = await appThemeStorage.fetchTheme();
    return ThemeComplete(theme: theme, themeCode: appThemeStorage.currentTheme);
  }

  Future<ThemeState> changeTheme(ChangeThemeEvent event) async {
    final theme = await appThemeStorage.changeTheme(event.themeIndexSelected);
    return ThemeComplete(theme: theme, themeCode: appThemeStorage.currentTheme);
  }
}
