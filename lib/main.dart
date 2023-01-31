import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/themes.dart';
import 'package:last_app/core/values/languegs/languegs.dart';
import 'package:last_app/routes/pages.dart';
import 'package:last_app/routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(), // your translations
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('fa', 'IR'),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: NamedRoute.initialRoute,
      getPages: Pages.pages,
    );
  }
}
