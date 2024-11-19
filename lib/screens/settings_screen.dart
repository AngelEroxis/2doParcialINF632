import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtenemos el estado actual del tema
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Center(
      child: SwitchListTile(
        title: Text("Modo oscuro"),
        value: themeProvider.themeMode == ThemeMode.dark,
        onChanged: (value) {
          // Cambiamos el tema basado en el valor del switch
          if (value) {
            themeProvider.setThemeMode(ThemeMode.dark);
          } else {
            themeProvider.setThemeMode(ThemeMode.light);
          }
        },
      ),
    );
  }
}
