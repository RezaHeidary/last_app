import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/firebase_controller.dart';
import 'package:last_app/core/themes/style/btn_login_style.dart';
import '../controller/login_controller.dart';

class LoginCodeWidget {
  LoginCodeWidget._();
  static var loginController = Get.find<LoginController>();
  static var loginFireBaseController = Get.find<LoginFireBase>();

  static widgetCode() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.all(40),
          // ignore: prefer_const_constructors
          child: TextField(
            controller: loginFireBaseController.textEditingControllerCode.value,
            decoration: InputDecoration(
              hintText: "textFildCode".tr,
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        const SizedBox(
          height: 80,
        ),
        ElevatedButton(
            // onPressed: () {
            //   loginFireBaseController.getCheckCodeForLogin();
            // },.
            style: BtnLoginStyle.btnStyleForLpgin,
            onPressed: loginFireBaseController.getCheckCodeForLogin,
            child: Text(
              "btnCode".tr,
              style: const TextStyle(fontSize: 25),
            )),
        // ignore: prefer_const_constructors
        SizedBox(
          height: 80,
        ),
        TextButton(
          onPressed: () {
            loginController.getBack();
          },
          child: Text(
            "btnBack".tr,
          ),
        ),
      ],
    );
  }
}
