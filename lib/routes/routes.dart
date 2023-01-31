import 'package:get/get.dart';
import 'package:last_app/modules/login/view/login_view.dart';
import 'package:last_app/routes/pages.dart';

class Pages {
  Pages._();

  static List<GetPage<dynamic>> pages = [
    GetPage(
      name: NamedRoute.initialRoute,
      page: () => const LoginView(),
    ),
  ];
}
