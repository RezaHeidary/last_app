import 'package:get/get.dart';
import 'package:last_app/routes/pages.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  getProductPage() {
    Get.toNamed(NamedRoute.productRoute);
  }
}
