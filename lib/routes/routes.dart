import 'package:get/get.dart';
import 'package:last_app/modules/home/view/home_view.dart';
import 'package:last_app/modules/login/view/login_view.dart';
import 'package:last_app/modules/product/views/prodcut_view.dart';
import 'package:last_app/routes/pages.dart';

import '../modules/product/views/show_image._view.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.initialRoute,
      page: () => const LoginView(),
    ),
    GetPage(
      name: NamedRoute.homeRoute,
      page: () => HomeView(),
    ),
    GetPage(
      name: NamedRoute.productRoute,
      page: () => ProdcutView(),
    ),
    GetPage(
      name: NamedRoute.productShowImagesRoute,
      page: () => ProductShowImageView(),
    ),
  ];
}
