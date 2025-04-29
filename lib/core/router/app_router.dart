import 'package:auto_route/auto_route.dart';
import 'package:pick_champ/core/router/app_router.gr.dart';
import 'package:pick_champ/core/router/guard/auth_guard.dart';
import 'package:pick_champ/core/router/guard/connection_guard.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    // AutoRoute(
    //   page: OnboardingRoute.page,
    //   initial: true,
    //   guards: [AuthGuard()],
    // ),
    AutoRoute(
      page: MainRoute.page,
      guards: [ConnectionGuard()],
      children: [],
    ),
    // AutoRoute(
    //   page: LoginRoute.page,
    //   guards: [NotificationGuard(), CountryGuard()],
    // ),
    // AutoRoute(page: RegisterRoute.page, guards: [NotificationGuard()]),
  ];
}
