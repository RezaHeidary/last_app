import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:last_app/routes/pages.dart';

class HomeController extends GetxController {
  var currentIndex = 0.obs;
  var connect = false.obs;
  // ignore: prefer_typing_uninitialized_variables
  var subscription;
  getProductPage(int id) {
    Get.toNamed(NamedRoute.productRoute, arguments: id);
  }

  @override
  void onInit() {
    super.onInit();

    intrnetCheker();
  }

  intrnetCheker() async {
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      connect.value = await InternetConnectionChecker().hasConnection;
      if (!connect.value) {
        intrnetChekerDefaultDialog();
      }
    });
  }

  intrnetChekerDefaultDialog() {
    return Get.defaultDialog(
        barrierDismissible: false,
        title: "NetWork",
        middleText: "Check the Internet and try agin",
        confirmTextColor: Colors.white,
        onConfirm: () async {
          connect.value = await InternetConnectionChecker().hasConnection;
          if (connect.value) {
            Get.back();
          }
        });
  }

  @override
  void dispose() {
    subscription.dispose();
    super.dispose();
  }
}
