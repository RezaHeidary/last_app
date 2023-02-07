import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/component/component.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';

class SingleBuyProductWidget {
  SingleBuyProductWidget._();
  static var fakeData = Get.find<FakeData>();
  static widgetBuySingleProduct(context, int index) {
    return Get.bottomSheet(
        backgroundColor: Theme.of(context).colorScheme.background,
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text("Price : ${fakeData.price[index]}"),
            ElevatedButton(
                onPressed: () async {
                  await Componet.getLinke();
                },
                child: const Text("buy"))
          ],
        ));
  }
}
