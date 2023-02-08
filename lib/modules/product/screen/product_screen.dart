import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/controller/product_api_controller.dart';
import 'package:last_app/modules/product/widget/image_product_widget.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:readmore/readmore.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});
  var homeApiController = Get.find<ProductApiController>();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageProductWidget.widgetProductImage(Get.arguments),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                homeApiController.homeModleList[Get.arguments].title.toString(),
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),
              Text(
                // ignore: prefer_interpolation_to_compose_strings
                "Price : " +
                    homeApiController.homeModleList[Get.arguments].price
                        .toString()
                        .seRagham(),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),

              // ignore: prefer_const_constructors
              ReadMoreText(
                homeApiController.homeModleList[Get.arguments].description
                    .toString(),
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'more'.tr,
                trimExpandedText: 'less'.tr,
                moreStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                lessStyle:
                    const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
