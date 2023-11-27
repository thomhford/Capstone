import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
      background: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      onPrimary: Colors.grey.shade500,
      onBackground: Colors.grey.shade900,
      secondary: Colors.grey.shade700,
      onSecondary: Colors.white,
      outline: Colors.white,
      outlineVariant: Colors.grey.shade400,
      surface: Colors.black),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.grey.shade200,
    secondary: Colors.grey.shade700,
    onSecondary: Colors.white,
    primary: Colors.grey.shade900,
    onPrimary: Colors.grey.shade100,
    outline: Colors.grey.shade600,
    outlineVariant: Colors.white,
  ),
);
