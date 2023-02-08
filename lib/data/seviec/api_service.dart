import 'dart:developer';
import 'package:dio/dio.dart';

class DioService {
  Dio dio = Dio();

  Future<dynamic> getMethod(String url) async {
    return await dio
        .get(url,
            options: Options(responseType: ResponseType.json, method: 'GET'))
        .then((response) {
      return response;
      // ignore: body_might_complete_normally_catch_error
    }).catchError((err) {
      if (err is DioError) {
        return err.response!;
      }
    });
  }

  Future<dynamic> postMethod(Map<String, dynamic> map, String url) async {
    return await dio
        .post(url,
            data: map,
            options: Options(
              responseType: ResponseType.json,
              method: 'POST',
            ))
        .then((response) {
      log(response.headers.toString());
      log(response.data.toString());
      log(response.statusCode.toString());
      return response;
      // ignore: body_might_complete_normally_catch_error
    }).catchError((err) {
      log(err.toString());
      if (err is DioError) {
        return err.response!;
      }
    });
  }
}
