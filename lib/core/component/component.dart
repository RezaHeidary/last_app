import 'dart:developer';

import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:url_launcher/url_launcher.dart';

class Componet {
  Componet._();
  static getLinke() async {
    String link = 'https://lastapp.page.link/r394';
    final PendingDynamicLinkData? initialLink =
        await FirebaseDynamicLinks.instance.getDynamicLink(Uri.parse(link));
    final Uri deepLink = initialLink!.link;

    if (await canLaunchUrl(deepLink)) {
      await launchUrl(deepLink);
    } else {
      log("could not launch ${deepLink.path.toString()}");
    }
  }
}
