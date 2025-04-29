import 'package:auto_route/auto_route.dart';
import 'package:findpro/common/router/app_router.gr.dart';
import 'package:findpro/common/widget/app_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AutoTabsScaffold(
      routes: const [],
      bottomNavigationBuilder: (context, tabsRouter) {
        return AppBottomNavigationBar(
          tabsRouter: tabsRouter,
          pageIndex: tabsRouter.activeIndex,
        );
      },
    );
  }
}
