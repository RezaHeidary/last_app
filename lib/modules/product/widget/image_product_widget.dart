import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/routes/pages.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ImageProductWidget {
  ImageProductWidget._();
  static var homeApiController = Get.find<ProductApiController>();

  static widgetProductImage(int index) {
    return GestureDetector(
        onTap: () {
          Get.toNamed(NamedRoute.productShowImagesRoute, arguments: index);
        },
        child: SizedBox(
          width: Get.width,
          height: Get.height / 2.5,
          child: CachedNetworkImage(
            imageUrl: homeApiController.homeModleList[index].images[0],
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            placeholder: (context, url) => LoadingAnimationWidget.dotsTriangle(
              size: 50,
              color: Theme.of(context).cardColor,
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}
