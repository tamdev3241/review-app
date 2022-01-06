import 'package:flutter/material.dart';
import 'package:review_app/src/localizations/app_localization.dart';

import '../../constants/string_constants.dart';
import '../../constants/theme.dart';

class ReviuPage extends StatelessWidget {
  const ReviuPage({Key? key}) : super(key: key);

  final EdgeInsetsGeometry _reviuImagePadding = const EdgeInsets.all(40.0);
  final EdgeInsetsGeometry _reviuTitlePadding =
      const EdgeInsets.only(bottom: 10.0);
  final EdgeInsetsGeometry _reviuDecsPadding =
      const EdgeInsets.symmetric(horizontal: 30.0);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalization.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: _reviuTitlePadding,
          child: Text(
            lang.localized(StringContants.reviuTitleKey),
            style: theme.textTheme.headline1,
          ),
        ),
        Padding(
          padding: _reviuDecsPadding,
          child: Text(
            lang.localized(StringContants.reviuDecsKey),
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: _reviuImagePadding,
          child: Image.asset(AppAssets.review),
        ),
      ],
    );
  }
}
