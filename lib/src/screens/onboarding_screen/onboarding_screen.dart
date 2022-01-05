import 'package:flutter/material.dart';
import 'package:review_app/src/localizations/app_localization.dart';

import '../../widgets/common_button.dart';
import '../../widgets/onBoarding_pages/reviu_page.dart';
import '../../widgets/onBoarding_pages/social_page.dart';
import '../../widgets/onBoarding_pages/trending_page.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final EdgeInsetsGeometry _buttonPadding = const EdgeInsets.symmetric(
    vertical: 5.0,
    horizontal: 10.0,
  );
  final _bottomSpacing = const SizedBox(height: 10.0);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalization.of(context);
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            child: PageView(
              children: const [
                TrendingPage(),
                SocialPage(),
                ReviuPage(),
              ],
            ),
          ),
          Padding(
            padding: _buttonPadding,
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    label: lang.locaized('login_button'),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: _buttonPadding,
            child: Row(
              children: [
                Expanded(
                  child: CommonButton(
                    label: lang.locaized('skip_login_button'),
                    labelStyle: theme.textTheme.headline5!.copyWith(
                      color: theme.iconTheme.color,
                    ),
                    backgroundColor: Colors.grey[200],
                  ),
                ),
              ],
            ),
          ),
          _bottomSpacing,
        ],
      ),
    );
  }
}
