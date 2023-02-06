import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/controller/fake_data.dart';
import 'package:last_app/modules/home/widget/basket_widget/buy_all_widget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

// ignore: must_be_immutable
class BasketScreen extends StatelessWidget {
  BasketScreen({super.key});
  FakeData fakeData = Get.put(FakeData());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
          height: Get.height,
          child: fakeData.name.isNotEmpty
              ? ListView.builder(
                  itemCount: fakeData.name.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 5,
                          child: Container(
                              width: Get.width,
                              height: Get.height / 4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
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
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(fakeData.name[index]),
                                        Text(
                                          "basketPrice".tr +
                                              fakeData.price[index]
                                                  .toString()
                                                  .seRagham(),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: Get.width / 4.5,
                                    height: Get.height,
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: const [
                                          Icon(
                                            Icons.monetization_on_rounded,
                                            size: 30,
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Icon(
                                            Icons.delete,
                                            size: 30,
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
              : const Center(child: Text("Add product")),
        ),
        floatingActionButton: BuyAllWidget.widgetBuyAll(context));
  }
}
