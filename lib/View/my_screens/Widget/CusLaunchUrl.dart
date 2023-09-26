import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLaunchUrl {
  String driveUrl =
      'https://drive.google.com/drive/folders/1r0st4ARi0or5yquSklVJLwm-i0loKO-P?usp=sharing';
  Future<void> Launch() async {
    Uri uri = Uri.parse(driveUrl);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw 'Can not launch Url';
    }
  }
}
