import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:page_indicator/page_indicator.dart';

class HomePosterWidget {
  HomePosterWidget._();
  static var homeApiController = Get.find<ProductApiController>();

  static widgetHomePoster() {
    return SizedBox(
      width: Get.width,
      height: Get.height / 3,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: PageIndicatorContainer(
            length: 2,
            child: PageView.builder(
              itemCount: 2,
              physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
              itemBuilder: (context, index) => CachedNetworkImage(
                imageUrl: homeApiController.homeModleList[index].images![index],
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                    LoadingAnimationWidget.dotsTriangle(
                  size: 50,
                  color: Colors.deepOrange,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            )),
      ),
    );
  }
}
