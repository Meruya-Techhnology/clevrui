import 'package:flutter/material.dart';

class ClevrRadioTheme extends RadioThemeData {
  final ColorScheme colorScheme;
  ClevrRadioTheme({
    required this.colorScheme,
  }) : super(
          fillColor: MaterialStateProperty.resolveWith((states) {
            return colorScheme.secondary;
          }),
          visualDensity: VisualDensity.compact,
        );
}
