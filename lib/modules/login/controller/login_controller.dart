import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:last_app/routes/pages.dart';

class LoginController extends GetxController {
  var indexPage = 0.obs;
  var textEditingController = TextEditingController().obs;

  getSendCode() {
    if (textEditingController.value.text.isNotEmpty) {
      indexPage.value = 1;
    }
  }

  getBack() {
    indexPage.value = 0;
  }

  getRouteShop() {
    Get.offNamed(NamedRoute.homeRoute);
  }
}
