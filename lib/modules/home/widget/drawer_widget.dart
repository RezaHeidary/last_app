import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/core/themes/themes.dart';
import 'package:last_app/routes/pages.dart';

import '../controller/home_controller.dart';

class DrawerWideget {
  DrawerWideget._();
  static var homeController = Get.find<HomeController>();
  static widgetDrawerWideget() {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('drawerLThemes'.tr),
                  Row(
                    children: [
                      Text('drawerlight'.tr),
                      Radio(
                        onChanged: (value) {
                          Get.changeTheme(Themes.lightTheme);
                          homeController.flagTheme.value = value!;
                        },
                        groupValue: homeController.flagTheme.value,
                        value: 0,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("drawerDark".tr),
                      Radio(
                        onChanged: (value) {
                          Get.changeTheme(Themes.darkTheme);
                          homeController.flagTheme.value = value!;
                        },
                        groupValue: homeController.flagTheme.value,
                        value: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Obx(
              () => Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('drawerLocal'.tr),
                  Row(
                    children: [
                      Text('en'.tr),
                      Radio(
                        onChanged: (value) {
                          Get.updateLocale(const Locale('en', 'Us'));
                          homeController.flagLocal.value = value!;
                        },
                        groupValue: homeController.flagLocal.value,
                        value: 1,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text("fa".tr),
                      Radio(
                        onChanged: (value) {
                          Get.updateLocale(const Locale('fa', 'IR'));
                          homeController.flagLocal.value = value!;
                        },
                        groupValue: homeController.flagLocal.value,
                        value: 0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                    onPressed: () {
                      GetStorage().write("isLogin", "false");
                      Get.offAllNamed(NamedRoute.initialRoute);
                    },
                    child: SizedBox(
                        width: Get.width - 175, child: Text('exit'.tr))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
