import 'package:flutter/material.dart';
import 'package:review_app/src/constants/theme.dart';
import './constants/route_name.dart';
import './routes/route_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: RouteName.initial,
      onGenerateRoute: RouteController.pageRoute,
    );
  }
}
