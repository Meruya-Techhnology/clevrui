import 'package:flutter/material.dart';

/// This class is a shorcut
class ColorSchemeUtil {
  /// Instead of using
  /// Theme.of(context).colorScheme.background;
  /// We can now using, for more compact color getter
  /// ColorSchemeUtil.background(context)

  static Color? primary(BuildContext context) {
    return Theme.of(context).colorScheme.primary;
  }

  static Color? primaryVariant(BuildContext context) {
    return Theme.of(context).colorScheme.primaryVariant;
  }

  static Color? onPrimary(BuildContext context) {
    return Theme.of(context).colorScheme.onPrimary;
  }

  static Color? secondary(BuildContext context) {
    return Theme.of(context).colorScheme.secondary;
  }

  static Color? secondaryVariant(BuildContext context) {
    return Theme.of(context).colorScheme.secondaryVariant;
  }

  static Color? onSecondary(BuildContext context) {
    return Theme.of(context).colorScheme.onSecondary;
  }

  static Color? background(BuildContext context) {
    return Theme.of(context).colorScheme.background;
  }

  static Color? onBackground(BuildContext context) {
    return Theme.of(context).colorScheme.onBackground;
  }

  static Color? surface(BuildContext context) {
    return Theme.of(context).colorScheme.surface;
  }

  static Color? onSurface(BuildContext context) {
    return Theme.of(context).colorScheme.onSurface;
  }

  static Color? error(BuildContext context) {
    return Theme.of(context).colorScheme.error;
  }

  static Color? onError(BuildContext context) {
    return Theme.of(context).colorScheme.onError;
  }

  static Brightness? brightness(BuildContext context) {
    return Theme.of(context).colorScheme.brightness;
  }
}
