import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/app_bar_style.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';
import 'package:last_app/modules/home/widget/bottom_navigation_bar_style.dart';
import 'package:last_app/modules/home/controller/home_controller.dart';
import 'package:last_app/modules/home/screen/account_Screen.dart';
import 'package:last_app/modules/home/screen/basket_screen.dart';
import 'package:last_app/modules/home/screen/home_screen.dart';
import 'package:last_app/modules/home/widget/drawer_widget.dart';
import '../../../controller/product_api_controller.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  HomeController homeController = Get.put(HomeController());
  ProductApiController homeApiController = Get.put(ProductApiController());
  FakeData fakeModel = Get.put(FakeData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyle.widgetAppBar('appShop'.tr),
        drawer: DrawerWideget.widgetDrawerWideget(),
        body: Obx(
          () => IndexedStack(
            index: homeController.currentIndex.value,
            children: [
              const SingleChildScrollView(child: HomeScreen()),
              BasketScreen(),
              const AccountScreen(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavStyle.widgetBottomNavStyle(context));
  }
}
