import 'package:get/get.dart';
import 'package:last_app/data/seviec/api_service.dart';
import '../modules/home/model/product_model.dart';

class ProductApiController extends GetxController {
  var loading = true.obs;
  RxList<ProductModel> homeModleList = RxList();
  @override
  onInit() {
    super.onInit();
    getList();
  }

  getList() async {
    loading.value = true;
    homeModleList.clear();
    final response = await DioService()
        .getMethod("https://api.escuelajs.co/api/v1/products/");
    print(response);

    await response.data.forEach((val) {
      homeModleList.add(ProductModel.fromJson(val));
    });

    loading.value = false;
  }
}
