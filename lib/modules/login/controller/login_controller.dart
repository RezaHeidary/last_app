import 'package:get/get.dart';
import 'package:last_app/routes/pages.dart';

class LoginController extends GetxController {
  var indexPage = 0.obs;

  getSendCode() {
    indexPage.value = 1;
  }

  getBack() {
    indexPage.value = 0;
  }

  getSingUp() {
    indexPage.value = 2;
  }

  getRouteShop() {
    Get.offNamed(NamedRoute.homeRoute);
  }
}
