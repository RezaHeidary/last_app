import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/product/controller/add_basket_controller.dart';

class FloatButtonWidget {
  FloatButtonWidget._();
  static AddBasketController addBasketController =
      Get.put(AddBasketController());
  static widgetFloatButton(index) {
    return FloatingActionButton(
      onPressed: () {
        addBasketController.getAddBasket(index);
        Get.snackbar("Add", "");
      },
      child: const Icon(Icons.add),
    );
  }
}
