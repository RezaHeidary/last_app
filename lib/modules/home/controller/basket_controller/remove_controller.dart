import 'package:get/get.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';

class BasketDataRemoveController extends GetxController {
  FakeData fakeData = Get.put(FakeData());

  getRemve(int index) {
    fakeData.sumPorduct -= fakeData.price[index];
    fakeData.imagePosterGridview.removeAt(index);
    fakeData.name.removeAt(index);
    fakeData.price.removeAt(index);
  }
}
