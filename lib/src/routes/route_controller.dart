import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:review_app/src/screens/onboarding_screen/onboarding_screen.dart';

import '../constants/route_names.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/not_found_screen/not_found_screen.dart';
import '../screens/splash_screen/splash_screen.dart';

class RouteController {
  static CupertinoPageRoute pageRoute(RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (_) {
        switch (settings.name) {
          case RouteName.initial:
            return const SplashScreen();
          case RouteName.onBoarding:
            return const OnBoardingScreen();
          case RouteName.home:
            return const HomeScreen();
          default:
            return const NotFoundScreen();
        }
      },
    );
  }
}
