import 'package:flutter/material.dart';

class ClevrTextTheme extends TextTheme {
  final Brightness brightness;
  final ColorScheme colorScheme;
  ClevrTextTheme({
    this.brightness = Brightness.light,
    required this.colorScheme,
  }) : super(
          headline1: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 96,
            letterSpacing: -1.5,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 60,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
          headline3: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 48,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
          headline4: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 34,
            letterSpacing: 0.25,
            fontWeight: FontWeight.w600,
          ),
          headline5: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 24,
            letterSpacing: 0,
            fontWeight: FontWeight.w600,
          ),
          headline6: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 20,
            letterSpacing: 0.15,
            fontWeight: FontWeight.w600,
          ),
          bodyText1: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 16,
            letterSpacing: 0.5,
            fontWeight: FontWeight.normal,
          ),
          bodyText2: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 14,
            letterSpacing: 0.25,
            fontWeight: FontWeight.normal,
          ),
          subtitle1: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 16,
            letterSpacing: 0.15,
            fontWeight: FontWeight.w500,
          ),
          subtitle2: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 14,
            letterSpacing: 0.1,
            fontWeight: FontWeight.w500,
          ),
          caption: TextStyle(
            color: colorScheme.onSurface,
            fontSize: 12,
            letterSpacing: 0.2,
          ),
          button: TextStyle(
            color: colorScheme.onPrimary,
            fontSize: 14,
            letterSpacing: 1.25,
            fontWeight: FontWeight.w500,
          ),
        );
}
