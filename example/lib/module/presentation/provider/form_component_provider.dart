import 'package:flutter/material.dart';

class FormComponentProvider extends ChangeNotifier {
  final BuildContext context;
  FormComponentProvider({required this.context});

  double _sliderValue = 0;
  bool? _checkboxValue1 = false;
  bool? _checkboxValue2 = false;
  bool? _radioGroupValue = true;
  bool? _radioValue1 = true;
  bool? _radioValue2 = false;

  double get getSliderValue => _sliderValue;
  bool? get getCheckboxValue1 => _checkboxValue1;
  bool? get getCheckboxValue2 => _checkboxValue2;
  bool? get getRadioGroupValue => _radioGroupValue;
  bool? get getRadioValue1 => _radioValue1;
  bool? get getRadioValue2 => _radioValue2;

  void changeSliderValue(double value) {
    _sliderValue = value;
    notifyListeners();
  }

  void changeCheckboxValue1(bool? value) {
    _checkboxValue1 = value;
    notifyListeners();
  }

  void changeCheckboxValue2(bool? value) {
    _checkboxValue2 = value;
    notifyListeners();
  }

  void checkRadioButton1(bool? value) {
    _radioGroupValue = false;
    _radioValue1 = value;
    notifyListeners();
  }

  void checkRadioButton2(bool? value) {
    _radioGroupValue = false;
    _radioValue2 = value;
    notifyListeners();
  }
}
