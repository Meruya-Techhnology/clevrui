import 'package:flutter/material.dart';

class ClevrAppBarTheme extends AppBarTheme {
  final Brightness brightness;
  final ColorScheme colorScheme;
  final TextTheme textTheme;
  ClevrAppBarTheme({
    this.brightness = Brightness.light,
    required this.colorScheme,
    required this.textTheme,
  }) : super(
          brightness: brightness,
          textTheme: TextTheme(
            caption: textTheme.caption,
            headline6: textTheme.headline6,
          ),
          elevation: 0,
          backgroundColor: colorScheme.background,
          foregroundColor: colorScheme.onBackground,
          actionsIconTheme: IconThemeData(
            color: colorScheme.onBackground,
          ),
          iconTheme: IconThemeData(
            color: colorScheme.onBackground,
          ),
        );
}
