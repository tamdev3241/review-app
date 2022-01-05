import 'package:flutter/material.dart';

import '../constants/colors_constants.dart';
import '../constants/theme.dart';

class CommonButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final TextStyle? labelStyle;
  final EdgeInsetsGeometry padding;
  final Color? backgroundColor;
  final Color? shadowColor;
  final double borderRadius;
  final double elevation;
  const CommonButton({
    Key? key,
    required this.label,
    this.labelStyle,
    this.backgroundColor = ColorConstants.primaryColor,
    this.shadowColor = Colors.transparent,
    this.padding = const EdgeInsets.symmetric(vertical: 15.0),
    this.onPressed,
    this.borderRadius = 10.0,
    this.elevation = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final TextStyle? defaultLabelStyle = labelStyle ??
        theme.textTheme.headline5!.copyWith(
          color: Colors.white,
          fontWeight: AppFontWeight.bold,
        );
    return ElevatedButton(
      onPressed: onPressed ?? () {},
      style: ElevatedButton.styleFrom(
        shadowColor: shadowColor,
        primary: backgroundColor,
        elevation: elevation,
        padding: padding,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      child: Text(
        label,
        style: defaultLabelStyle,
      ),
    );
  }
}
