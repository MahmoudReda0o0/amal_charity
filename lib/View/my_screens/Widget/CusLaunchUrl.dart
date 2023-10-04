import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomLaunchUrl {
   String developerDrive= 'https://drive.google.com/drive/folders/1p_FXTJVJOw9X1pumenTVBaS3mPO8PFIv?usp=drive_link';
   String charityDrive =
      'https://drive.google.com/drive/folders/1r0st4ARi0or5yquSklVJLwm-i0loKO-P?usp=sharing';
   Future<void> launch(String driveUrl) async {
    Uri uri = Uri.parse(driveUrl);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.inAppWebView,
    )) {
      throw 'Can not launch Url';
    }
  }
}
