import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/controller/home_controller.dart';
import 'package:last_app/modules/home/model/fake_model.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ListProducts {
  ListProducts._();
  static var homeController = Get.find<HomeController>();

  static widgetListProduct() {
    return SizedBox(
      width: Get.width,
      height: Get.height / 3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          itemCount: 2,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  homeController.getProductPage();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: Get.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage(
                              FakeModel.imagePosterGridview[index],
                            ),
                            fit: BoxFit.fill)),
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9),
                          child: Text("1200000".seRagham(),
                              style: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold)),
                        )),
                  ),
                ),
              )),
    );
  }
}
