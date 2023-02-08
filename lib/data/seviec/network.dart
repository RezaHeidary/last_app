import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetWork extends GetxController {
  @override
  void onInit() {
    super.onInit();

    intrnetCheker();
  }

  // ignore: prefer_typing_uninitialized_variables
  var connect = false.obs;
  var subscription;
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
