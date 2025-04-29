import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:pick_champ/core/const/extensions/context_extension.dart';
import 'package:pick_champ/core/init/cache_manager.dart';
import 'package:pick_champ/generated/assets.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    required this.pageIndex,
    required this.tabsRouter,
    super.key,
  });

  final int pageIndex;
  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    final isDarkMode = brightness == Brightness.dark;
    return SalomonBottomBar(
      unselectedItemColor: context.themeData.indicatorColor,
      selectedItemColor: Colors.blue,
      backgroundColor: context.themeData.scaffoldBackgroundColor,
      currentIndex: tabsRouter.activeIndex,
      selectedColorOpacity: 0.2,
      curve: Curves.easeInCubic,
      onTap: (value) {
        if (tabsRouter.activeIndex == 3 && value == 3) {
          if (CacheManager.instance.getUserId() != 0) {
            // context.router.pushAndPopUntil(const SettingsRoute(),
            //     predicate: (_) => false);
          }
        } else {
          tabsRouter.setActiveIndex(value);
        }
      },
      items: [
        SalomonBottomBarItem(
          title: Text(
            'LocaleKeys.home.tr()',
            style:
                tabsRouter.activeIndex == 0
                    ? context.textTheme.labelMedium?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )
                    : context.textTheme.labelMedium,
          ),
          activeIcon: Image.asset(
            'Assets.iconDiscovery',
            height: 27,
            color: Colors.blue,
          ),
          icon: Image.asset(
            'Assets.iconDiscovery',
            height: 27,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SalomonBottomBarItem(
          title: Text(
            'LocaleKeys.search.tr()',
            style:
                tabsRouter.activeIndex == 1
                    ? context.textTheme.labelMedium?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )
                    : context.textTheme.labelMedium,
          ),
          activeIcon: Image.asset(
            '  Assets.iconSearchIcon',
            height: 30,
            color: Colors.blue,
          ),
          icon: Image.asset(
            'Assets.iconSearchIcon',
            height: 30,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SalomonBottomBarItem(
          title: Text(
            'LocaleKeys.messages.tr()',
            style:
                tabsRouter.activeIndex == 2
                    ? context.textTheme.labelMedium?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )
                    : context.textTheme.labelMedium,
          ),
          activeIcon: Image.asset(
            'Assets.iconMessages',
            height: 27,
            color: Colors.blue,
          ),
          icon: Image.asset(
            'Assets.iconMessages',
            height: 27,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
        SalomonBottomBarItem(
          title: Text(
            'LocaleKeys.settings.tr()',
            style:
                tabsRouter.activeIndex == 3
                    ? context.textTheme.labelMedium?.copyWith(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    )
                    : context.textTheme.labelMedium,
          ),
          activeIcon: Image.asset(
            'Assets.iconSettings',
            height: 27,
            color: Colors.blue,
          ),
          icon: Image.asset(
            'Assets.iconProfile',
            height: 27,
            color: isDarkMode ? Colors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
