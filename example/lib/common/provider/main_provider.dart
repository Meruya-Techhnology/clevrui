import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  Brightness _brightness = Brightness.light;

  Brightness get getBrightness => _brightness;

  void changeBrightness(Brightness brightness) {
    _brightness = brightness;
    notifyListeners();
  }
}
