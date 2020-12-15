import 'package:flutter/material.dart';
import 'package:wheaterapp_ui_challenge/style.dart';

class AppTheme {
  //
  // AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: mainColor,
    brightness: Brightness.light,
    primaryColor: mainColor,
    accentColor: borderLightColor,
    textTheme: TextTheme(
      headline1: mainText,
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: darkColor,
    brightness: Brightness.dark,
    primaryColor: darkColor,
    accentColor: borderDarkColor,
    textTheme: TextTheme(
      headline1: mainText,
    ),
  );
}
