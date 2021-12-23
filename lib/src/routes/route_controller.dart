import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/route_name.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/not_found_screen/not_found_screen.dart';

class RouteController {
  static CupertinoPageRoute pageRoute(RouteSettings settings) {
    return CupertinoPageRoute(
      settings: settings,
      builder: (_) {
        switch (settings.name) {
          case RouteName.initial:
          case RouteName.home:
            return const HomeScreen();
          default:
            return const NotFoundScreen();
        }
      },
    );
  }
}
