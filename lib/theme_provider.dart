import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // Inicializa con el tema del sistema
  ThemeMode _themeMode = ThemeMode.system;

  ThemeMode get themeMode => _themeMode;

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    notifyListeners(); // Notificar a los widgets que escuchan el cambio
  }
}
