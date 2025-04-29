import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pick_champ/core/router/app_router.dart';

class RouterProvider {
  RouterProvider(this.ref) {
    appRouter = AppRouter();
  }
  late AppRouter appRouter;
  Ref ref;
}

final routerProvider = Provider<AppRouter>((ref) {
  return RouterProvider(ref).appRouter;
});
