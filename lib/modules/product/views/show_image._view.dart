import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/modules/product/controller/show_image_controller.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

// ignore: must_be_immutable
class ProductShowImageView extends StatelessWidget {
  ProductShowImageView({super.key});
  ProductShowImageController productShowImageController =
      Get.put(ProductShowImageController());
  static var homeApiController = Get.find<ProductApiController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Obx(
          () => Text(
              "Image:${productShowImageController.count.value}/${homeApiController.homeModleList[Get.arguments].images.length}"),
        ),
      ),
      body: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          productShowImageController.getCount(index + 1);
        },
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: NetworkImage(
                homeApiController.homeModleList[Get.arguments].images[index]),
            initialScale: PhotoViewComputedScale.contained * 0.8,
          );
        },
        itemCount: homeApiController.homeModleList[Get.arguments].images.length,
      ),
    );
  }
}
