import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    onBackground: Colors.black,
    primary: Colors.lightGreen.shade100,
    onPrimary: Colors.blueGrey.shade900,
    primaryContainer: Colors.grey.shade400,
    secondaryContainer: Colors.grey.shade700,
    outline: Colors.white,
    outlineVariant: Colors.grey.shade400,
    surface: Colors.black,
    secondary: Colors.lightGreen.shade100,
  ),
  navigationBarTheme: NavigationBarThemeData(
    labelTextStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Quicksand'
      ),
    ),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.white,
    primary: Colors.blueGrey.shade900,
    onPrimary: Colors.lightGreen.shade100,
    primaryContainer: Colors.grey.shade900,
    secondaryContainer: Colors.grey.shade400,
    outline: Colors.grey.shade600,
    outlineVariant: Colors.white,
    secondary: Colors.lightGreen.shade100,
  ),
  navigationBarTheme: NavigationBarThemeData(
    labelTextStyle: MaterialStateProperty.all(
      const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Quicksand'
      ),
    ),
  ),
);
