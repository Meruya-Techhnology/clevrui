import 'package:clevrui/values/colors_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ClevrColorScheme {
  final Brightness brightness;
  final ColorScheme? ligthColorScheme;
  final ColorScheme? darkColorScheme;

  ClevrColorScheme({
    this.brightness = Brightness.light,
    this.ligthColorScheme,
    this.darkColorScheme,
  });

  ColorScheme get defaultLightScheme {
    return ColorScheme(
      primary: ColorsUtil.secondary,
      primaryVariant: ColorsUtil.secondary[900]!,
      secondary: ColorsUtil.secondary,
      secondaryVariant: ColorsUtil.secondary[900]!,
      surface: ColorsUtil.grey.withAlpha(50),
      background: Colors.white,
      error: ColorsUtil.error,
      onPrimary: Colors.white,
      onSecondary: Colors.white,
      onSurface: Colors.black,
      onBackground: Colors.black,
      onError: Colors.white,
      brightness: Brightness.light,
    );
  }

  ColorScheme get defaultDarkScheme {
    return ColorScheme(
      primary: ColorsUtil.primary,
      primaryVariant: ColorsUtil.primary[900]!,
      secondary: ColorsUtil.primary,
      secondaryVariant: ColorsUtil.primary[900]!,
      surface: ColorsUtil.grey[900]!,
      background: ColorsUtil.dark,
      error: ColorsUtil.error[400]!,
      onPrimary: Colors.black,
      onSecondary: Colors.black,
      onSurface: Colors.white,
      onBackground: Colors.white,
      onError: Colors.white,
      brightness: Brightness.dark,
    );
  }

  ColorScheme get activeColor {
    return brightness == Brightness.light
        ? (ligthColorScheme ?? defaultLightScheme)
        : (darkColorScheme ?? defaultDarkScheme);
  }
}
