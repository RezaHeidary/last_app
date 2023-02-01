import 'package:get/get.dart';

class ProductShowImageController extends GetxController {
  Rx<int> count = 1.obs;

  getCount(index) {
    count.value = index;
  }
}
