import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/btn_login_style.dart';
import 'package:last_app/modules/login/controller/login_controller.dart';

class LoginPhoneWidget {
  LoginPhoneWidget._();
  static var loginController = Get.find<LoginController>();
  static widgetPhone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.all(40),
          // ignore: prefer_const_constructors
          child: TextField(
            controller: loginController.textEditingController.value,
            maxLength: 11,
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              hintText: "textFildPhone".tr,
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ),

        const SizedBox(
          height: 80,
        ),
        ElevatedButton(
            onPressed: () {
              loginController.getSendCode();
            },
            style: BtnLoginStyle.btnStyle,
            child: Text(
              'btnPhone'.tr,
              style: const TextStyle(fontSize: 25),
            )),

        // ignore: prefer_const_constructors
        SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
