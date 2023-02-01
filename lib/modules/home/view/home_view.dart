import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/app_bar_style.dart';
import 'package:last_app/modules/home/widget/bottom_navigation_bar_style.dart';
import 'package:last_app/modules/home/controller/home_controller.dart';
import 'package:last_app/modules/home/controller/home_drawer_controller.dart';
import 'package:last_app/modules/home/screen/account_Screen.dart';
import 'package:last_app/modules/home/screen/basket_screen.dart';
import 'package:last_app/modules/home/screen/home_screen.dart';
import 'package:last_app/modules/home/widget/drawer_widget.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeDrawerController homeDrawerController = Get.put(HomeDrawerController());
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyle.widgetAppBar('appShop'.tr),
        drawer: DrawerWideget.widgetDrawerWideget(),
        body: Obx(
          () => IndexedStack(
            index: homeController.currentIndex.value,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const HomeScreen(),
              const BasketScreen(),
              const AccountScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavStyle.widgetBottomNavStyle());
  }
}
