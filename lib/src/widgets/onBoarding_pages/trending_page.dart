import 'package:flutter/material.dart';

import '../../constants/string_constants.dart';
import '../../constants/theme.dart';

class TrendingPage extends StatelessWidget {
  const TrendingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Text(
            'Trending',
            style: theme.textTheme.headline1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Text(
            'Nơi bắt nguồn cho những địa điểm & xu hướng ăn uống',
            style: theme.textTheme.headline5!.copyWith(
              fontWeight: AppFontWeight.regular,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(
            AppAssets.trending,
          ),
        ),
      ],
    );
  }
}
