import 'package:get/get.dart';
import 'package:last_app/routes/pages.dart';

class HomeController extends GetxController {
  var flagTheme = 0.obs;
  var flagLocal = 1.obs;
  var currentIndex = 0.obs;
  getProductPage(int id) {
    Get.toNamed(NamedRoute.productRoute, arguments: id);
  }
}
