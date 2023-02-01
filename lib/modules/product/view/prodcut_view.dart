import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/app_bar_style.dart';
import 'package:last_app/modules/product/screen/product_screen.dart';

class ProdcutView extends StatelessWidget {
  const ProdcutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarStyle.widgetAppBar("appProduct".tr),
      body: const ProductScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
