// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/gen/assets.gen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Get.width,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
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
            const SizedBox(
              height: 50,
            ),
            Text(
              "accuntPhone".tr,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "09125550011",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.edit)),
    );
  }
}
