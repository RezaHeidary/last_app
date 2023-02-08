import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/controller/basket_controller/remove_controller.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';
import 'package:last_app/modules/home/widget/basket_widget/buy_all_widget.dart';
import 'package:last_app/modules/home/widget/basket_widget/buy_product.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

// ignore: must_be_immutable
class BasketScreen extends StatelessWidget {
  BasketScreen({super.key});
  FakeData fakeData = Get.put(FakeData());
  BasketDataRemoveController basketDataRemoveController =
      Get.put(BasketDataRemoveController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(
          () => SizedBox(
            height: Get.height,
            child: fakeData.name.isNotEmpty
                ? ListView.builder(
                    itemCount: fakeData.name.length,
                    itemBuilder: (context, index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Material(
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(30),
                            elevation: 5,
                            child: Container(
                                width: Get.width,
                                height: Get.height / 4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    //images
                                    Container(
                                      height: Get.height / 2,
                                      width: Get.width / 3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(30),
                                        image: DecorationImage(
                                            image: NetworkImage(fakeData
                                                .imagePosterGridview[index]),
                                            fit: BoxFit.fill),
                                      ),
                                    ),

                                    // 3 text column info
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          fakeData.name[index],
                                          maxLines: 1,
                                          overflow: TextOverflow.clip,
                                        ),
                                        Text(
                                          "basketPrice".tr +
                                              fakeData.price[index]
                                                  .toString()
                                                  .seRagham(),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: Get.width / 5,
                                      height: Get.height,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, right: 5),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                SingleBuyProductWidget
                                                    .widgetBuySingleProduct(
                                                        context, index);
                                              },
                                              child: const Icon(
                                                Icons.monetization_on_rounded,
                                                size: 30,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            GestureDetector(
                                              child: const Icon(
                                                Icons.delete,
                                                size: 30,
                                              ),
                                              onTap: () {
                                                basketDataRemoveController
                                                    .getRemve(index);
                                              },
                                            ),
                                          ],
                                        ),
                                      ),
                                    )

                                    //user
                                  ],
                                )),
                          ),
                        ))
                : Center(child: Text("addProduct".tr)),
          ),
        ),
        floatingActionButton: BuyAllWidget.widgetBuyAll(context));
  }
}
