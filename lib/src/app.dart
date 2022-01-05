import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'blocs/languages_bloc/languages_bloc.dart';
import 'blocs/languages_bloc/languages_event.dart';
import 'blocs/languages_bloc/languages_state.dart';
import 'constants/string_constants.dart';
import 'constants/theme.dart';
import 'localizations/app_language.dart';
import 'localizations/app_localization.dart';
import 'routes/route_controller.dart';
import 'screens/onboarding_screen/onboarding_screen.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppLanguage appLanguage = AppLanguage();
  late LanguagesBloc languagesBloc;

  @override
  void initState() {
    languagesBloc = LanguagesBloc(appLanguage: appLanguage);
    languagesBloc.add(FetchLanguage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => languagesBloc),
      ],
      child: BlocBuilder<LanguagesBloc, LanguagesState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: AppTheme.lightTheme,
            home: const OnBoardingScreen(),
            locale: (state is LanguageComplete)
                ? state.locale
                : Locale(StringContants.langList[1]),
            supportedLocales: AppLocalization.supportedLocale,
            localizationsDelegates: const [
              AppLocalization.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            //initialRoute: RouteName.initial,
            onGenerateRoute: RouteController.pageRoute,
          );
        },
      ),
    );
  }
}
