import 'dart:developer';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/modules/login/controller/api_user_controller.dart';
import 'package:last_app/routes/pages.dart';
import 'package:shamsi_date/shamsi_date.dart';

class LoginFireBase extends GetxController {
  var message = "";
  var textEditingControllerCode = TextEditingController().obs;
  var textEditingControllerPassWord = TextEditingController().obs;
  var textEditingControllerName = TextEditingController().obs;
  var textEditingControllerEmail = TextEditingController().obs;
  static var apiUserController = Get.find<ApiUserController>();
  GetStorage getStorage = GetStorage();
  getToken() async {
    var sms = FirebaseMessaging.instance;
    var token = await sms.getToken();
    print(token);
    await getMessaging();
  }

  getMessaging() async {
    FirebaseMessaging.onMessage.listen((event) {
      message = event.data["pass"];
      log(message);
    });
  }

  getCheckCodeForLogin() async {
    if (message == textEditingControllerCode.value.text) {
      await getStorage.write("isLogin", "true");
      await getStorage.write("email", textEditingControllerEmail.value.text);
      apiUserController.getAddPost();
      await getStorage.write("date",
          "${Jalali.now().year}/${Jalali.now().month}/${Jalali.now().day}");

      Get.offNamed(NamedRoute.homeRoute);
    }
  }
}
