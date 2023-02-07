import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
    fontFamily: "Sen",
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.lightBlue, brightness: Brightness.dark),
    useMaterial3: true,
  );
  static final lightTheme = ThemeData(
    fontFamily: "Sen",
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.lightBlue,
      brightness: Brightness.light,
    ),
    useMaterial3: true,
  );
}
