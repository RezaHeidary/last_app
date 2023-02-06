import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/routes/pages.dart';

class ImageProductWidget {
  ImageProductWidget._();
  static var homeApiController = Get.find<ProductApiController>();

  static widgetProductImage(int index) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(NamedRoute.productShowImagesRoute, arguments: index);
        },
        child: SizedBox(
            width: Get.width,
            height: Get.height / 2.5,
            child: Image.network(
              homeApiController.homeModleList[index].images![0],
              fit: BoxFit.fill,
            )));
  }
}
