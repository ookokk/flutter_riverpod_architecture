import 'package:flutter_riverpod_architecture/core/router/app_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final routerProvider = Provider<AppRouter>((ref) {
  return AppRouter();
});
