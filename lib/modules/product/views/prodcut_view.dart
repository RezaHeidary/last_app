import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_app/core/themes/style/app_bar_style.dart';
import 'package:last_app/modules/product/screen/product_screen.dart';
import 'package:last_app/modules/product/widget/float_button_widget.dart';

class ProdcutView extends StatelessWidget {
  const ProdcutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarStyle.widgetAppBar("appProduct".tr),
        body: ProductScreen(),
        floatingActionButton:
            FloatButtonWidget.widgetFloatButton(Get.arguments));
  }
}
