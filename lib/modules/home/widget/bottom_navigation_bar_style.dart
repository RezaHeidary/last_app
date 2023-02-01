import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/controller/home_controller.dart';

class BottomNavStyle {
  BottomNavStyle._();
  static var homeController = Get.find<HomeController>();

  static widgetBottomNavStyle() {
    return Obx(
      () => CustomNavigationBar(
        iconSize: 30.0,
        selectedColor: Color.fromARGB(255, 30, 124, 108),
        currentIndex: homeController.currentIndex.value,
        onTap: (index) {
          homeController.currentIndex.value = index;
        },
        items: [
          CustomNavigationBarItem(
            icon: const Icon(Icons.home),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag),
          ),
          CustomNavigationBarItem(
            icon: const Icon(Icons.account_box),
          ),
        ],
      ),
    );
  }
}
