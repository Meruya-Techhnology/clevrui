import 'package:clevrui/themes/clevr_app_bar_theme.dart';
import 'package:clevrui/themes/clevr_checkbox_theme.dart';
import 'package:clevrui/themes/clevr_color_scheme.dart';
import 'package:clevrui/themes/clevr_input_decoration_theme.dart';
import 'package:clevrui/themes/clevr_radio_theme.dart';
import 'package:clevrui/themes/clevr_slider_theme.dart';
import 'package:clevrui/themes/clevr_text_selection_theme.dart';
import 'package:clevrui/themes/clevr_text_theme.dart';
import 'package:flutter/material.dart';

import 'clevr_text_button_theme.dart';

class ThemeUtil {
  final Brightness brightness;
  final ColorScheme? ligthColorScheme;
  final ColorScheme? darkColorScheme;
  ThemeUtil({
    this.brightness = Brightness.light,
    this.ligthColorScheme,
    this.darkColorScheme,
  });

  ThemeData? get themes {
    return ThemeData(
      backgroundColor: colorScheme.background,
      canvasColor: colorScheme.background,
      primaryColor: colorScheme.primary,
      cardColor: colorScheme.surface,
      focusColor: colorScheme.secondary,
      errorColor: colorScheme.error,
      colorScheme: colorScheme,
      textTheme: textTheme,
      textSelectionTheme: ClevrTextSelectionTheme(
        colorScheme: colorScheme,
      ),
      checkboxTheme: ClevrCheckboxTheme(
        colorScheme: colorScheme,
      ),
      radioTheme: ClevrRadioTheme(
        colorScheme: colorScheme,
      ),
      sliderTheme: ClevrSliderTheme(
        colorScheme: colorScheme,
      ),
      inputDecorationTheme: ClevrInputDecorationTheme(
        colorScheme: colorScheme,
        textTheme: textTheme,
      ),
      appBarTheme: ClevrAppBarTheme(
        brightness: brightness,
        textTheme: textTheme,
        colorScheme: colorScheme,
      ),
      indicatorColor: colorScheme.primary,
      splashColor: colorScheme.secondary,
      // TODO : Please make this separate file
      tabBarTheme: TabBarTheme(
        labelStyle: textTheme.bodyText1,
        labelColor: colorScheme.primary,
        unselectedLabelColor: colorScheme.onBackground,
      ),
      // TODO : Please make this separate file
      buttonTheme: ButtonThemeData(
        colorScheme: colorScheme,
        buttonColor: colorScheme.primary,
        splashColor: colorScheme.primary,
      ),
      textButtonTheme: ClevrTextButtonTheme(
        colorScheme: colorScheme,
      ),
    );
  }

  TextTheme get textTheme => ClevrTextTheme(
        brightness: brightness,
        colorScheme: colorScheme,
      );

  ColorScheme get colorScheme => ClevrColorScheme(
        brightness: brightness,
        ligthColorScheme: ligthColorScheme,
        darkColorScheme: darkColorScheme,
      ).activeColor;
}
