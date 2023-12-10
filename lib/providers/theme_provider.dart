import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData temaActual;
  Color colorTexto;

  ThemeProvider({required bool isDarkMode})
      : temaActual = (isDarkMode) ? ThemeData.dark() : ThemeData.light(),
        colorTexto = (isDarkMode) ? Colors.white : Colors.black;

  setLight() {
    temaActual = ThemeData.light();
    colorTexto = Colors.black;
    notifyListeners();
  }

  setDark() {
    temaActual = ThemeData.dark();
    colorTexto = Colors.white;
    notifyListeners();
  }
}
