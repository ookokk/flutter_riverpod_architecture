import 'package:flutter/material.dart';

class PlatformAlertDialogAndroid extends StatelessWidget {

  const PlatformAlertDialogAndroid({super.key,
    required this.title,
    required this.content,
  });
  final String title, content;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        title,
      ),
      content: Text(content),
    );
  }
}
