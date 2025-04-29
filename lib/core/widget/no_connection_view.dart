import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pick_champ/core/const/extensions/context_extension.dart';

@RoutePage()
class NoConnectionView extends StatefulWidget {
  const NoConnectionView({super.key});

  @override
  NoConnectionViewState createState() => NoConnectionViewState();
}

class NoConnectionViewState extends State<NoConnectionView> {
  bool isAnimated = false;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: context.themeData.scaffoldBackgroundColor,
      // child: NoDataWidget(text: LocaleKeys.noConnection.tr()),
    );
  }
}
