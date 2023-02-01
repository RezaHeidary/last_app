import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/model/fake_model.dart';
import 'package:last_app/modules/product/controller/show_image_controller.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

// ignore: must_be_immutable
class ProductShowImageView extends StatelessWidget {
  ProductShowImageView({super.key});
  ProductShowImageController productShowImageController =
      Get.put(ProductShowImageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Obx(
          () => Text(
              "Image:${productShowImageController.count.value}/${FakeModel.imagePosterGridview.length}"),
        ),
      ),
      body: PhotoViewGallery.builder(
        scrollPhysics: const BouncingScrollPhysics(),
        onPageChanged: (index) {
          productShowImageController.getCount(index + 1);
        },
        builder: (BuildContext context, int index) {
          return PhotoViewGalleryPageOptions(
            imageProvider: AssetImage(FakeModel.imagePosterGridview[index]),
            initialScale: PhotoViewComputedScale.contained * 0.8,
          );
        },
        itemCount: FakeModel.imagePosterGridview.length,
      ),
    );
  }
}
