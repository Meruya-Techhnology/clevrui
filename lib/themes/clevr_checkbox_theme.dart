import 'package:clevrui/values/dimens_util.dart';
import 'package:flutter/material.dart';

class ClevrCheckboxTheme extends CheckboxThemeData {
  final ColorScheme colorScheme;
  ClevrCheckboxTheme({
    required this.colorScheme,
  }) : super(
          checkColor: MaterialStateProperty.resolveWith((states) {
            return colorScheme.onSecondary;
          }),
          fillColor: MaterialStateProperty.resolveWith((states) {
            return colorScheme.secondary;
          }),
          visualDensity: VisualDensity.compact,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              DimensUtil.xxs,
            ),
          ),
        );
}
