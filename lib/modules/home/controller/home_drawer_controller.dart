import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/themes.dart';

class HomeDrawerController extends GetxController {
  Rx<bool> flagTheme = false.obs;
  Rx<bool> flagLocal = false.obs;
  getTheme() {
    flagTheme.value
        ? Get.changeTheme(Themes.darkTheme)
        : Get.changeTheme(Themes.lightTheme);
  }

  getLocal() {
    !flagLocal.value
        ? Get.updateLocale(const Locale('en', 'Us'))
        : Get.updateLocale(const Locale('fa', 'IR'));
  }
}
