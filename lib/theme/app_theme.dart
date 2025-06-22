import 'package:flutter/material.dart';

abstract class ThemeNames {
  static const String light = "light";
  static const String dark = "dark";
}

//region LightTheme
ThemeData _lightTheme = ThemeData.light().copyWith(
  textTheme: TextTheme(
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
  useMaterial3: true,
);
//endregion

//region DarkTheme
ThemeData _darkTheme = ThemeData.dark().copyWith(
  textTheme: TextTheme(
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    labelMedium: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
    ),
    labelSmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    bodySmall: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
    ),
  ),
  useMaterial3: true,
);
//endregion

abstract class AppTheme {
  static ThemeData get dark => _darkTheme;

  static ThemeData get light => _lightTheme;
}
