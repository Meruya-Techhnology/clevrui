import 'package:flutter/material.dart';

class ColorSchemeProvider extends ChangeNotifier {
  final BuildContext context;
  ColorSchemeProvider({required this.context});

  int _selectedColor = 0;

  /// Getter
  Map<String, dynamic> get getSelectedColor => getColorSchemes[_selectedColor];
  ColorScheme get getColorScheme => Theme.of(context).colorScheme;
  List<Map<String, dynamic>> get getColorSchemes {
    return [
      {"title": "Primary", "color": getColorScheme.primary},
      {"title": "Primary Variant", "color": getColorScheme.primaryVariant},
      {"title": "Secondary", "color": getColorScheme.secondary},
      {"title": "Secondary Variant", "color": getColorScheme.secondaryVariant},
      {"title": "Background", "color": getColorScheme.background},
      {"title": "Surface", "color": getColorScheme.surface},
      {"title": "Error", "color": getColorScheme.error},
      {"title": "On Primary", "color": getColorScheme.onPrimary},
      {"title": "On Secondary", "color": getColorScheme.onSecondary},
      {"title": "On Background", "color": getColorScheme.onBackground},
      {"title": "On Surface", "color": getColorScheme.onSurface},
      {"title": "On Error", "color": getColorScheme.onError}
    ];
  }

  void changeSelectedColor(int index) {
    _selectedColor = index;
    notifyListeners();
  }
}
