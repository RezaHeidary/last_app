import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';

class AddBasketController extends GetxController {
  ProductApiController homeApiController = Get.put(ProductApiController());
  FakeData fakeData = Get.put(FakeData());
  getAddBasket(int index) {
    fakeData.name.add(homeApiController.homeModleList[index].title);
    fakeData.imagePosterGridview
        .add(homeApiController.homeModleList[index].images![0]);
    fakeData.price.add(homeApiController.homeModleList[index].price);
    fakeData.sumPorduct += homeApiController.homeModleList[index].price!;
  }
}
