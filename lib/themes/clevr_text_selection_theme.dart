import 'package:flutter/material.dart';

class ClevrTextSelectionTheme extends TextSelectionThemeData {
  final ColorScheme colorScheme;
  ClevrTextSelectionTheme({
    required this.colorScheme,
  }) : super(
          cursorColor: colorScheme.secondary,
          selectionColor: colorScheme.primary,
          selectionHandleColor: colorScheme.secondary,
        );
}
