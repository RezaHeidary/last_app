import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/modules/home/controller/home_controller.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ListProducts {
  ListProducts._();
  static var homeController = Get.find<HomeController>();
  static var homeApiController = Get.find<ProductApiController>();

  static widgetListProduct() {
    return SizedBox(
      width: Get.width,
      height: Get.height / 2.4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
        itemCount: homeApiController.homeModleList.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            homeController.getProductPage(index);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              width: Get.width / 2,
              child: CachedNetworkImage(
                imageUrl:
                    homeApiController.homeModleList[index].category['image'],
                imageBuilder: (context, imageProvider) => SizedBox(
                  height: Get.height / 10,
                  child: Material(
                    color: Theme.of(context).cardColor,
                    elevation: 10,
                    borderRadius: BorderRadius.circular(25),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: Get.height / 4,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          homeApiController.homeModleList[index].title
                              .toString(),
                          style: const TextStyle(fontSize: 16),
                          maxLines: 1,
                          overflow: TextOverflow.clip,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          homeApiController.homeModleList[index].price
                              .toString(),
                          style: const TextStyle(fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                placeholder: (context, url) =>
                    LoadingAnimationWidget.dotsTriangle(
                  size: 50,
                  color: Theme.of(context).cardColor,
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
