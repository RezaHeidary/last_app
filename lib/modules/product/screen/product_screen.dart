import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/gen/assets.gen.dart';
import 'package:last_app/modules/product/widget/image_product_widget.dart';
import 'package:last_app/routes/pages.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:readmore/readmore.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageProductWidget.widgetProductImage(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "iPhone 14",
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            // ignore: prefer_interpolation_to_compose_strings
            "Price : " + "1200000".seRagham(),
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Description".tr,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(14),
            child: ReadMoreText(
              'Flutter is Google’s mobile UI open source framework to build high-quality  native (super fast) interfaces for iOS and Android apps with the unified codebase.',
              trimLines: 2,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'more'.tr,
              trimExpandedText: 'less'.tr,
              moreStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              lessStyle:
                  const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
