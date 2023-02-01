import 'package:get/get.dart';
import 'package:last_app/modules/home/view/home_view.dart';
import 'package:last_app/modules/login/view/login_view.dart';
import 'package:last_app/modules/product/view/prodcut_view.dart';
import 'package:last_app/modules/product/view/show_image._view.dart';
import 'package:last_app/routes/pages.dart';

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
      page: () => const ProdcutView(),
    ),
    GetPage(
      name: NamedRoute.productShowImagesRoute,
      page: () => ProductShowImageView(),
    ),
  ];
}
