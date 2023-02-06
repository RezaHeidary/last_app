import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/core/themes/themes.dart';
import 'package:last_app/core/values/languegs/languegs.dart';
import 'package:last_app/routes/pages.dart';
import 'package:last_app/routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  await Firebase.initializeApp();

  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({super.key});
  GetStorage islogin = GetStorage();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('fa', 'IR'),
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      initialRoute: islogin.read("isLogin") == "true"
          ? NamedRoute.homeRoute
          : NamedRoute.initialRoute,
      getPages: Pages.pages,
    );
  }
}
