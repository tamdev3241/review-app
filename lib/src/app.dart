import 'package:flutter/material.dart';
import 'package:review_app/src/constants/route_name.dart';
import 'package:review_app/src/routes/route_controller.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.initial,
      onGenerateRoute: RouteController.pageRoute,
    );
  }
}
