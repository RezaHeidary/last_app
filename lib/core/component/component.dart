import 'dart:developer';

import 'package:url_launcher/url_launcher.dart';

class Componet {
  Componet._();

  static myLaunchUrl(String url) async {
    var uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      log("could not launch ${uri.toString()}");
    }
  }
}
