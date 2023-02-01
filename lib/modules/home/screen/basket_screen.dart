import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/model/fake_model.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class BasketScreen extends StatelessWidget {
  const BasketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: Get.height,
        child: ListView.builder(
            itemCount: 2,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(30),
                    elevation: 5,
                    child: Container(
                        width: Get.width,
                        height: Get.height / 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
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
                                    image: AssetImage(
                                        FakeModel.imagePosterGridview[index]),
                                    fit: BoxFit.fill),
                              ),
                            ),

                            // 3 text column info
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text("iPhone"),
                                  Text(
                                    "basketPrice".tr + "1200000".seRagham(),
                                  ),
                                ],
                              ),
                            ),

                            //user Our system

                            //system
                            SizedBox(
                              width: Get.width / 3.5,
                              height: Get.height,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: const [
                                    Icon(
                                      Icons.monetization_on_rounded,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 16,
                                    ),
                                    Icon(
                                      Icons.delete,
                                      color: Colors.black,
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
                )),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.monetization_on_rounded,
          )),
    );
  }
}
