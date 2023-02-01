import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:last_app/gen/assets.gen.dart';
import 'package:last_app/routes/pages.dart';

class ImageProductWidget {
  ImageProductWidget._();

  static widgetProductImage() {
    return GestureDetector(
        onTap: () {
          Get.toNamed(NamedRoute.productShowImagesRoute);
        },
        child: SizedBox(
            width: Get.width,
            height: Get.height / 2.5,
            child: Image.asset(
              Assets.images.apple.path,
              fit: BoxFit.fill,
            )));
  }
}
