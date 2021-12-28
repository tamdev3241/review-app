import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final double _logoRadius = 30.0;
  final double _logoImageSize = 120.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        child: Center(
          child: Container(
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(_logoRadius),
            ),
            child: Image.asset(
              AppAssets.appLogo,
              width: _logoImageSize,
              height: _logoImageSize,
            ),
          ),
        ),
      ),
    );
  }
}
