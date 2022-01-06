import 'package:flutter/material.dart';
import 'package:review_app/src/localizations/app_localization.dart';

import '../../constants/string_constants.dart';
import '../../constants/theme.dart';

class SocialPage extends StatelessWidget {
  const SocialPage({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _socialImagePadding = const EdgeInsets.all(40.0);
  final EdgeInsetsGeometry _socialTitlePadding =
      const EdgeInsets.only(bottom: 10.0);
  final EdgeInsetsGeometry _socialDecsPadding =
      const EdgeInsets.symmetric(horizontal: 30.0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalization.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: _socialTitlePadding,
          child: Text(
            lang.localized(StringContants.socialTitleKey),
            style: theme.textTheme.headline1,
          ),
        ),
        Padding(
          padding: _socialDecsPadding,
          child: Text(
            lang.localized(StringContants.socialDecsKey),
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: _socialImagePadding,
          child: Image.asset(AppAssets.social),
        ),
      ],
    );
  }
}
