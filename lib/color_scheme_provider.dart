import 'package:flutter/material.dart';

class ColorSchemeProvider with ChangeNotifier {
  // Colores predeterminados
  Color primaryColor = Colors.blue;
  Color secondaryColor = Colors.blueAccent;
  Color backgroundColor = Colors.white;

  // Cambiar esquema de colores
  void setColorScheme(Color primary, Color secondary, Color background) {
    primaryColor = primary;
    secondaryColor = secondary;
    backgroundColor = background;
    notifyListeners(); // Notificamos a los widgets que están escuchando
  }

  // Obtenemos el esquema de colores
  ColorScheme get currentColorScheme => ColorScheme.light(
        primary: primaryColor,
        secondary: secondaryColor,
        background: backgroundColor,
      );
}
