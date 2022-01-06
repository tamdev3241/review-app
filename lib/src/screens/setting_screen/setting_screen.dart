import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../blocs/languages_bloc/languages_bloc.dart';
import '../../blocs/languages_bloc/languages_event.dart';
import '../../blocs/languages_bloc/languages_state.dart';
import '../../blocs/theme_bloc/theme_bloc.dart';
import '../../blocs/theme_bloc/theme_event.dart';
import '../../blocs/theme_bloc/theme_state.dart';
import '../../constants/string_constants.dart';
import '../../constants/theme.dart';
import '../../localizations/app_localization.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  final double _rightLanguageIconSize = 18.0;
  final double _selectLanguageDialogElevation = 0.2;
  final double _selectLanguageDialogBorderRadius = 10.0;
  final double _languanItemBorderRadius = 10.0;
  final Widget _languanItemSpacing = const SizedBox(height: 10.0);
  final EdgeInsetsGeometry _languanItemPadding = const EdgeInsets.all(10.0);
  final Color _selectLanguageDialogBerrierColor = Colors.black.withOpacity(0.2);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalization.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: theme.iconTheme.color,
            size: 26.0,
          ),
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
        ),
        title: Text(
          lang.localized(StringContants.settingTitleKey),
          style: theme.textTheme.headline4,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              lang.localized(StringContants.langTitleKey),
              style: theme.textTheme.headline5!.copyWith(
                fontWeight: AppFontWeight.medium,
              ),
            ),
            trailing: Flexible(
              child: InkWell(
                onTap: () async {
                  int? langIndexSelected = await selectLanguage();
                  if (langIndexSelected != null) {
                    context
                        .read<LanguagesBloc>()
                        .add(ChangeLanguage(langIndexSelected));
                  }
                },
                child: BlocBuilder<LanguagesBloc, LanguagesState>(
                  builder: (context, state) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          state is LanguageComplete
                              ? state.locale
                                      .toString()
                                      .contains(StringContants.langCodeList[1])
                                  ? lang.localized(StringContants.viLangKey)
                                  : lang.localized(StringContants.enLangKey)
                              : lang.localized(StringContants.viLangKey),
                          style: theme.textTheme.bodyText1!.copyWith(
                            color: Colors.grey,
                            fontWeight: AppFontWeight.regular,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.grey,
                          size: _rightLanguageIconSize,
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              return ListTile(
                title: Text(
                  lang.localized(StringContants.darkThemeTitleKey),
                  style: theme.textTheme.headline5!.copyWith(
                    fontWeight: AppFontWeight.medium,
                  ),
                ),
                trailing: CupertinoSwitch(
                  value: state is ThemeComplete
                      ? state.themeCode.contains(StringContants.themeList[0])
                          ? false
                          : true
                      : false,
                  onChanged: (bool isLightTheme) {
                    context
                        .read<ThemeBloc>()
                        .add(ChangeThemeEvent(isLightTheme ? 1 : 0));
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Future<int> selectLanguage() async => await showDialog(
      context: context,
      barrierColor: _selectLanguageDialogBerrierColor,
      builder: (context) {
        final theme = Theme.of(context);
        final lang = AppLocalization.of(context);
        return AlertDialog(
          elevation: _selectLanguageDialogElevation,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(_selectLanguageDialogBorderRadius),
          ),
          title: Text(
            lang.localized(StringContants.langTitleKey),
            style: theme.textTheme.headline5,
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => Navigator.pop(context, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: _languanItemPadding,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(_languanItemBorderRadius),
                        ),
                        child: Text(
                          lang.localized(StringContants.enLangKey),
                          style: theme.textTheme.headline6!.copyWith(
                            fontWeight: AppFontWeight.regular,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              _languanItemSpacing,
              InkWell(
                onTap: () => Navigator.pop(context, 1),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: _languanItemPadding,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius:
                              BorderRadius.circular(_languanItemBorderRadius),
                        ),
                        child: Text(
                          lang.localized(StringContants.viLangKey),
                          style: theme.textTheme.headline6!.copyWith(
                            fontWeight: AppFontWeight.regular,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
