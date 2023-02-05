import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/routes/pages.dart';

class LoginFireBase extends GetxController {
  var message = "";
  var textEditingControllerCode = TextEditingController().obs;
  var textEditingControllerPhone = TextEditingController().obs;
  getToken() async {
    await Firebase.initializeApp();
    var sms = FirebaseMessaging.instance;
    var token = await sms.getToken();
    print(token);
    await getMessaging();
  }

  getMessaging() async {
    FirebaseMessaging.onMessage.listen((event) {
      message = event.data["pass"];
      print(message);
    });
  }

  getCheckCodeForLogin() async {
    if (message == textEditingControllerCode.value.text) {
      await GetStorage().write("isLogin", "true");
      Get.offNamed(NamedRoute.homeRoute);
    }
  }
}
