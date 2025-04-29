import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pick_champ/core/const/extensions/context_extension.dart';

class QuestionAlert {
  Future<void> show(
    BuildContext context, {
    required String bodyText,
    required String buttonText,
    required VoidCallback onTap,
  }) async {
    if (Platform.isIOS) {
      return showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            content: Text(
              bodyText,
              style: context.textTheme.headlineSmall,
            ),
            actions: [
              CupertinoDialogAction(
                onPressed: onTap,
                child: Text(
                  buttonText,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.red,
                  ),
                ),
              ),
              CupertinoDialogAction(
                onPressed: () => context.router.pop(),
                child: Text(
                  ' LocaleKeys.cancel.tr()',
                  style: context.textTheme.labelLarge,
                ),
              ),
            ],
          );
        },
      );
    } else {
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              ' LocaleKeys.warning.tr()',
              style: context.textTheme.headlineLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            content: Text(
              bodyText,
              style: context.textTheme.headlineSmall,
            ),
            actions: [
              TextButton(
                onPressed: () => context.router.pop(),
                child: Text(
                  'LocaleKeys.cancel.tr()',
                  style: context.textTheme.labelLarge,
                ),
              ),
              TextButton(
                onPressed: onTap,
                child: Text(
                  buttonText,
                  style: context.textTheme.labelLarge?.copyWith(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }
  }
}
