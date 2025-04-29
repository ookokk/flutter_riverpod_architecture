import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectionGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      await resolver.redirect(const NoConnectionRoute());
    } else {
      resolver.next();
    }
  }
}
