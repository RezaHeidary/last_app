import 'package:flutter/material.dart';

class Themes {
  static final darkTheme = ThemeData(
    fontFamily: "Sen",
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
        cardColor: Colors.black),
    cardColor: Colors.black,
    bottomAppBarTheme: const BottomAppBarTheme(color: Colors.black38),
    useMaterial3: true,
  );
  static final lightTheme = ThemeData(
    fontFamily: "Sen",
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        cardColor: Colors.white),
    bottomAppBarTheme: BottomAppBarTheme(color: Colors.grey[50]),
    cardColor: Colors.white,
    useMaterial3: true,
  );
}
