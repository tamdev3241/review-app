import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../../constants/theme.dart';
import '../../localizations/app_localization.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _trendingImagePadding = const EdgeInsets.all(20.0);
  final EdgeInsetsGeometry _trendingTitlePadding =
      const EdgeInsets.only(bottom: 10.0);
  final EdgeInsetsGeometry _trendingDecsPadding =
      const EdgeInsets.symmetric(horizontal: 30.0);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalization.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: _trendingTitlePadding,
          child: Text(
            lang.localized(StringContants.trendTitleKey),
            style: theme.textTheme.headline1,
          ),
        ),
        Padding(
          padding: _trendingDecsPadding,
          child: Text(
            lang.localized(StringContants.trendDecsKey),
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: _trendingImagePadding,
          child: Image.asset(AppAssets.trending),
        ),
      ],
    );
  }
}
