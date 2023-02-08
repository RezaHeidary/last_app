import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/firebase_controller.dart';
import 'package:last_app/core/themes/style/btn_login_style.dart';
import 'package:last_app/modules/login/controller/api_user_controller.dart';
import 'package:last_app/modules/login/controller/login_controller.dart';

class LoginSingUpWidget {
  LoginSingUpWidget._();
  static var loginController = Get.find<LoginController>();
  static var loginFireBaseController = Get.find<LoginFireBase>();
  static var apiUserController = Get.find<ApiUserController>();

  static widgetSingUp() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          // ignore: prefer_const_constructors
          child: TextField(
            controller:
                loginFireBaseController.textEditingControllerEmail.value,
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
            keyboardType: TextInputType.phone,
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
              apiUserController.getLogin();
            },
            style: BtnLoginStyle.btnStyleForLpgin,
            child: const Text(
              "Login",
              style: TextStyle(fontSize: 25),
            )),
        const SizedBox(
          height: 30,
        ),
        TextButton(
            onPressed: () {
              loginController.getBack();
            },
            child: const Text("bake")),
        const SizedBox(
          height: 80,
        ),
      ],
    );
  }
}
