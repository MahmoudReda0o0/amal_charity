import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLaunchUrl {
  Future<void> Launch(String Url) async {
    Uri uri = Uri.parse(Url );
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Can not launch Url';
    }
  }
}
