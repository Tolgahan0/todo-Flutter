import 'package:flutter/material.dart';

class ThemProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.light;

  void toggleThem(bool isOne) {
    themeMode = isOne ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class Mytheme {
  static final darkthem = ThemeData(
      scaffoldBackgroundColor: Color.fromARGB(255, 15, 16, 18),
      appBarTheme:
          const AppBarTheme(backgroundColor: Color.fromARGB(255, 15, 16, 18)),
      primaryColor: Colors.white,
      cardColor: Color.fromARGB(230, 105, 17, 17),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromARGB(230, 105, 17, 17)));

  static final lightthem = ThemeData(
    scaffoldBackgroundColor: Color(0xffF4F6FD),
    primaryColor: Color.fromARGB(255, 0, 0, 0),
    cardColor: Color.fromARGB(179, 0, 47, 255),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Color.fromARGB(163, 0, 47, 255)),
    appBarTheme: const AppBarTheme(backgroundColor: Color(0xffF4F6FD)),
  );
}
