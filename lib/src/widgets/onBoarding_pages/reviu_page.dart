import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../../constants/theme.dart';

class ReviuPage extends StatelessWidget {
  const ReviuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Reviu',
            style: theme.textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Chất lượng - Khách quan - Chân thật',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(40.0),
          child: Image.asset(AppAssets.review),
        ),
      ],
    );
  }
}
