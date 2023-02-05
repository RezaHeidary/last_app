import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/app_bar_style.dart';
import 'package:last_app/modules/login/screen/login_screen.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBarStyle.widgetAppBar("appLogin".tr),
        body: LoginScreen());
  }
}
