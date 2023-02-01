import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BtnLoginStyle {
  BtnLoginStyle._();

  static final btnStyle = ButtonStyle(
      fixedSize:
          MaterialStateProperty.all(Size(Get.width / 1.2, Get.height / 15)),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ));
}
