import 'package:flutter/material.dart';

class ClevrInputDecorationTheme extends InputDecorationTheme {
  final ColorScheme colorScheme;
  final TextTheme textTheme;

  ClevrInputDecorationTheme({
    required this.colorScheme,
    required this.textTheme,
  }) : super(
          isDense: true,
          focusColor: colorScheme.primary,
          fillColor: colorScheme.surface,
          filled: true,
          labelStyle: textTheme.caption,
          errorStyle: textTheme.caption?.copyWith(
            color: colorScheme.error,
          ),
          enabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide.none,
          ),
          focusedBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: colorScheme.secondary,
              width: 2,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: colorScheme.error,
              width: 2,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: colorScheme.error,
              width: 2,
            ),
          ),
        );
}
