import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/modules/home/widget/home_widget/home_poster_widget.dart';
import 'package:last_app/modules/home/widget/home_widget/list_products.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomePosterWidget.widgetHomePoster(),

        const SizedBox(
          height: 50,
        ),

        //text product
        SizedBox(
          width: Get.width - 30,
          child: Text(
            "listProducts".tr,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),

        ListProducts.widgetListProduct()
      ],
    );
  }
}
