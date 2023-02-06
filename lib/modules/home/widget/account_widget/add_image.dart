import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/data/seviec/pic_image_service.dart';

class AddImageController {
  AddImageController._();
  static PicImage picImage = Get.put(PicImage());

  static mageBottomSheet(context) {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        backgroundColor: Colors.transparent,
        builder: ((context) => Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Container(
                height: Get.height / 4,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            picImage.picIngallery();
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('addImageFromgallery'.tr),
                              const Icon(
                                Icons.image,
                                size: 50,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            picImage.picInCamera();

                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('addImageFromCamera'.tr),
                              const Icon(
                                Icons.camera_alt,
                                size: 50,
                              )
                            ],
                          ),
                        ),
                      )
                    ]))))));
  }
}
