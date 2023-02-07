import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/btn_login_style.dart';
import 'package:last_app/modules/login/controller/api_user_controller.dart';
import 'package:last_app/modules/login/controller/firebase_controller.dart';
import 'package:last_app/modules/login/controller/login_controller.dart';

class LoginEmailWidget {
  LoginEmailWidget._();
  static var loginController = Get.find<LoginController>();
  static var loginFireBaseController = Get.find<LoginFireBase>();

  static widgetPhone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: prefer_const_constructors
        Padding(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          child: TextField(
            controller: loginFireBaseController.textEditingControllerName.value,
            decoration: const InputDecoration(
              hintText: "Name",
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          child: TextField(
            controller:
                loginFireBaseController.textEditingControllerEmail.value,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Email",
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          child: TextField(
            controller:
                loginFireBaseController.textEditingControllerPassWord.value,
            decoration: const InputDecoration(
              hintText: "PassWord",
            ),
            style: const TextStyle(fontSize: 20),
          ),
        ),

        const SizedBox(
          height: 80,
        ),
        ElevatedButton(
            onPressed: () {
              loginFireBaseController.getToken();
              loginController.getSendCode();
            },
            style: BtnLoginStyle.btnStyle,
            child: Text(
              'btnPhone'.tr,
              style: const TextStyle(fontSize: 25),
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {
              loginController.getSingUp();
            },
            child: const Text("Login")),

        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
