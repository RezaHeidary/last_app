import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:last_app/controller/firebase_controller.dart';
import 'package:last_app/data/seviec/api_service.dart';
import 'package:last_app/modules/login/model/user_model.dart';
import 'package:last_app/routes/pages.dart';
import 'package:shamsi_date/shamsi_date.dart';

class ApiUserController extends GetxController {
  static var loginFireBaseController = Get.find<LoginFireBase>();
  GetStorage getStorage = GetStorage();

  getAddPost() async {
    // ignore: unused_local_variable
    Map<String, dynamic> mapAdd = {
      ApiUserModel.avatar: "https://api.lorem.space/image/face?w=640&h=480",
      ApiUserModel.name:
          loginFireBaseController.textEditingControllerName.value.text,
      ApiUserModel.email:
          loginFireBaseController.textEditingControllerEmail.value.text,
      ApiUserModel.password:
          loginFireBaseController.textEditingControllerPassWord.value.text
    };
    var response = await DioService()
        .postMethod(mapAdd, "https://api.escuelajs.co/api/v1/users/");

    if (response.statusCode == 201) {
      getStorage.write("email",
          loginFireBaseController.textEditingControllerEmail.value.text);
      Get.offNamed(NamedRoute.homeRoute);
    }
  }

  getLogin() async {
    // ignore: unused_local_variable
    Map<String, dynamic> mapAdd = {
      ApiUserModel.email:
          loginFireBaseController.textEditingControllerEmail.value.text,
      ApiUserModel.password:
          loginFireBaseController.textEditingControllerPassWord.value.text
    };
    var response = await DioService()
        .postMethod(mapAdd, "https://api.escuelajs.co/api/v1/auth/login");

    if (response.statusCode == 201) {
      await getStorage.write("email",
          loginFireBaseController.textEditingControllerEmail.value.text);
      await getStorage.write("isLogin", "true");
      await getStorage.write("date",
          "${Jalali.now().year}/${Jalali.now().month}/${Jalali.now().day}");

      Get.offNamed(NamedRoute.homeRoute);
    }
  }
}
