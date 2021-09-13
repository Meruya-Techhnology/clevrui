import 'package:flutter/material.dart';

class ClevrTextButtonTheme extends TextButtonThemeData {
  ClevrTextButtonTheme({
    required ColorScheme colorScheme,
    ButtonStyle? style,
  }) : super(
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.resolveWith(
              (states) {
                if (states.contains(MaterialState.pressed)) {
                  return colorScheme.onBackground;
                }
                return colorScheme.primary;
              },
            ),
          ),
        );
}
