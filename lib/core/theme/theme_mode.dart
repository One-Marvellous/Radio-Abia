import 'package:flutter/material.dart';

class AppTheme {
  static final lightMode = ThemeData(
      scaffoldBackgroundColor: const Color(0xFFF3F3F3),
      fontFamily: 'Poppins',
      colorScheme: const ColorScheme.light(
          surface: Color(0xFFF3F3F3),
          primary: Color(0XFF15411F),
          secondary: Color(0xFF757575)));

  static final darkMode = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF0A071E),
      fontFamily: 'Poppins',
      colorScheme: const ColorScheme.dark(
          surface: Color(0xFF0A071E),
          primary: Color(0XFF15411F),
          secondary: Color(0xFF4B4A65)));
}
