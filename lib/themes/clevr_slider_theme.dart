import 'package:flutter/material.dart';

class ClevrSliderTheme extends SliderThemeData {
  final ColorScheme colorScheme;
  ClevrSliderTheme({
    required this.colorScheme,
  }) : super(
          activeTickMarkColor: colorScheme.onSecondary,
          activeTrackColor: colorScheme.secondary,
          thumbColor: colorScheme.secondary,
          inactiveTrackColor: colorScheme.secondary.withOpacity(0.25),
          inactiveTickMarkColor: colorScheme.secondaryVariant.withOpacity(0.25),
          overlayColor: colorScheme.secondary.withOpacity(0.1),
          valueIndicatorColor: colorScheme.secondary.withOpacity(0.25),
        );
}
