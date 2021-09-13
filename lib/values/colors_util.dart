import 'package:flutter/material.dart';

class ColorsUtil {
  static const MaterialColor secondary = MaterialColor(
    _secondaryValue,
    <int, Color>{
      50: Color(0xfff0e6ff),
      100: Color(0xffd5c2ff),
      200: Color(0xffb798ff),
      300: Color(0xff966bff),
      400: Color(0xff7745ff),
      500: Color(0xff5013ff),
      600: Color(0xff3b0eff),
      700: Color(_secondaryValue),
      800: Color(0xff0000fb),
      900: Color(0xff0000f9),
    },
  );

  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(0xfffff8e1),
      100: Color(0xffffecb3),
      200: Color(0xffffe082),
      300: Color(0xffffd54f),
      400: Color(0xffffca28),
      500: Color(_primaryValue),
      600: Color(0xffffb300),
      700: Color(0xffffa000),
      800: Color(0xffff8f00),
      900: Color(0xffff6f00),
    },
  );
  static const MaterialColor error = MaterialColor(
    _errorValue,
    <int, Color>{
      50: Color(0xffffe9ec),
      100: Color(0xffffc8cc),
      200: Color(0xfff9918e),
      300: Color(0xfff16362),
      400: Color(0xfffb3738),
      500: Color(_errorValue),
      600: Color(0xfff10015),
      700: Color(0xffdf0010),
      800: Color(0xffd20005),
      900: Color(0xffc50000),
    },
  );
  static const MaterialColor grey = MaterialColor(
    _greyValue,
    <int, Color>{
      50: Color(0xfffcfcfc),
      100: Color(0xfff7f7f7),
      200: Color(0xfff2f2f2),
      300: Color(0xffeaeaea),
      400: Color(0xffc8c8c8),
      500: Color(_greyValue),
      600: Color(0xff808080),
      700: Color(0xff6c6c6c),
      800: Color(0xff4c4c4c),
      900: Color(0xff2a2a2a),
    },
  );
  static const MaterialColor success = MaterialColor(
    _successValue,
    <int, Color>{
      50: Color(0xffeafbe6),
      100: Color(0xffcbf4c1),
      200: Color(0xffa7ed98),
      300: Color(0xff7ce46a),
      400: Color(0xff53de42),
      500: Color(_successValue),
      600: Color(0xff00c500),
      700: Color(0xff00b100),
      800: Color(0xff009c00),
      900: Color(0xff007900),
    },
  );

  static const MaterialColor dark = MaterialColor(
    _darkValue,
    <int, Color>{
      500: Color(_darkValue),
    },
  );

  static const int _primaryValue = 0xffFFC107;
  static const int _secondaryValue = 0xff0000ff;
  static const int _errorValue = 0xffFF1111;
  static const int _successValue = 0xff03d600;
  static const int _greyValue = 0xffAAAAAA;
  static const int _darkValue = 0xff121212;
}
