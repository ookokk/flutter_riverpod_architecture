import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'View,Route',
)
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override //navigateRoute
  final List<AutoRoute> routes = [
    AutoRoute(page: MainRoute.page, initial: true, children: [
      AutoRoute(page: DiscoverRoute.page),
    ]),
  ];
}
