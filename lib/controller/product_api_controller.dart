import 'package:get/get.dart';
import 'package:last_app/data/seviec/api_service.dart';
import '../modules/home/model/product_model.dart';

class ProductApiController extends GetxController {
  var loading = true.obs;
  var homeModleList = List<ProductModel>.empty(growable: true).obs;

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
    final List myresponse = response.data;

    List<ProductModel> list =
        myresponse.map((json) => ProductModel.fromJson(json)).toList();
    homeModleList.addAll(list);

    loading.value = false;
  }
}
