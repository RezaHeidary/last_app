// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/gen/assets.gen.dart';
import 'package:last_app/modules/home/widget/account_widget/add_image.dart';

// ignore: must_be_immutable
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: Get.width,
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  AddImageController.mageBottomSheet(context);
                },
                child: Obx(
                  () => AddImageController.picImage.image!.value.path.isNotEmpty
                      ? Container(
                          width: Get.width / 3,
                          height: Get.height / 5,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(1000),
                              image: DecorationImage(
                                image: FileImage(
                                    AddImageController.picImage.image!.value),
                                fit: BoxFit.fill,
                              )),
                        )
                      : Container(
                          width: Get.width / 3,
                          height: Get.height / 5,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(1000),
                              image: DecorationImage(
                                image: AssetImage(Assets.images.user.path),
                                fit: BoxFit.fill,
                              )),
                        ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Email",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                GetStorage().read("email"),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 50,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "date".tr,
                style: const TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                GetStorage().read("date"),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
