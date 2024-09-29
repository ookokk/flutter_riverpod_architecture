import 'dart:io';

import 'package:flutter/material.dart';

import 'android/platform_alert_dialog_android.dart';
import 'ios/platform_alert_dialog_ios.dart';

class PlatformAlertDialog extends StatelessWidget {
  const PlatformAlertDialog({
    super.key,
    required this.title,
    required this.content,
  });
  final String title, content;

  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid
        ? PlatformAlertDialogAndroid(
            title: title,
            content: content,
          )
        : PlatformAlertDialogIos(
            title: title,
            content: content,
          );
  }
}
