import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pick_champ/core/router/router_provider.dart';
import 'package:pick_champ/core/theme/dark_theme_manager.dart';
import 'package:pick_champ/core/theme/light_theme_manager.dart';
import 'package:pick_champ/core/widget/custom_responsive.dart';
import 'package:pick_champ/core/widget/main_build.dart';

class PickChampApp extends ConsumerWidget {
  const PickChampApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Listener(
      onPointerDown: (_) {
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: CustomResponsive(
        child: MaterialApp.router(
          locale: context.locale,
          localizationsDelegates: context.localizationDelegates,
          theme: LightThemeManager().themeData,
          darkTheme: DarkThemeManager().themeData,
          supportedLocales: context.supportedLocales,
          routerDelegate: ref.read(routerProvider).delegate(),
          routeInformationParser:
              ref.read(routerProvider).defaultRouteParser(),
          debugShowCheckedModeBanner: false,
          builder: MainBuild.build,
        ),
      ),
    );
  }
}
