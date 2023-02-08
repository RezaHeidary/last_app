import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/component/component.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';

class BuyAllWidget {
  BuyAllWidget._();
  static var fakeData = Get.find<FakeData>();
  static widgetBuyAll(context) {
    return FloatingActionButton(
        onPressed: () {
          //  await Componet.getLinke();
          Get.bottomSheet(
              backgroundColor: Theme.of(context).colorScheme.background,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Price : ${fakeData.sumPorduct}"),
                  ElevatedButton(
                      onPressed: () async {
                        await Componet.getLinke();
                      },
                      child: const Text("buy"))
                ],
              ));
        },
        child: const Icon(
          Icons.monetization_on_rounded,
        ));
  }
}
