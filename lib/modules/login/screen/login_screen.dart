import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/login/controller/login_controller.dart';
import 'package:last_app/modules/login/widget/login_code_widget.dart';
import 'package:last_app/modules/login/widget/login_phone_widget.dart';

import '../controller/firebase_controller.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
  LoginFireBase loginFireBase = Get.put(LoginFireBase());
  @override
  Widget build(BuildContext context) {
    LoginController loginController = Get.put(LoginController());
    return Obx(
      () => IndexedStack(
        index: loginController.indexPage.value,
        children: [
          LoginPhoneWidget.widgetPhone(),
          LoginCodeWidget.widgetCode()
        ],
      ),
    );
  }
}
