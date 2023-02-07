import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/modules/home/controller/home_drawer_controller.dart';
import 'package:last_app/routes/pages.dart';

class DrawerWideget {
  DrawerWideget._();
  static var homeDrawerController = Get.find<HomeDrawerController>();
  static widgetDrawerWideget() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Text('drawerSeting'.tr),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('drawerLocal'.tr),
                Obx(
                  () => Switch(
                    value: homeDrawerController.flagLocal.value,
                    onChanged: (value) {
                      homeDrawerController.flagLocal.value = value;
                      homeDrawerController.getLocal();
                    },
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('drawerLThemes'.tr),
                Obx(() => Switch(
                      value: homeDrawerController.flagTheme.value,
                      onChanged: (value) {
                        homeDrawerController.flagTheme.value = value;
                        homeDrawerController.getTheme();
                      },
                    ))
              ],
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
