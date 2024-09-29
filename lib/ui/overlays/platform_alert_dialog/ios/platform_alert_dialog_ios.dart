import 'package:flutter/cupertino.dart';

class PlatformAlertDialogIos extends StatelessWidget {

  const PlatformAlertDialogIos({super.key,
    required this.title,
    required this.content,
  });
  final String title, content;

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        title,
      ),
      content: Text(content),

    );
  }
}
