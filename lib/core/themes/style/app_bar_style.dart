import 'package:flutter/material.dart';

class AppBarStyle {
  AppBarStyle._();

  static widgetAppBar(String str) {
    return AppBar(
      title: Text(str),
      centerTitle: true,
    );
  }
}
