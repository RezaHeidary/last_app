import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/login/controller/api_user_controller.dart';
import 'package:last_app/controller/firebase_controller.dart';
import 'package:last_app/modules/login/controller/login_controller.dart';
import 'package:last_app/modules/login/widget/login_code_widget.dart';
import 'package:last_app/modules/login/widget/login_email_widget.dart';
import 'package:last_app/modules/login/widget/login_sign_up.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginFireBase loginFireBase = Get.put(LoginFireBase());
  LoginController loginController = Get.put(LoginController());
  ApiUserController apiUserController = Get.put(ApiUserController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => IndexedStack(
        index: loginController.indexPage.value,
        children: [
          LoginEmailWidget.widgetPhone(),
          LoginCodeWidget.widgetCode(),
          LoginSingUpWidget.widgetSingUp()
        ],
      ),
    );
  }
}
