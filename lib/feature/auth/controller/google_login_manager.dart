// import 'package:auto_route/auto_route.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:findpro/common/cache/cache_manager.dart';
// import 'package:findpro/common/const/enum/end_point_enums.dart';
// import 'package:findpro/common/router/app_router.gr.dart';
// import 'package:findpro/common/services/manager/notification_manager.dart';
// import 'package:findpro/common/services/routes/auth_service.dart';
// import 'package:findpro/generated/locale_keys.g.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_sign_in/google_sign_in.dart';
//
// class GoogleLoginManager {
//   final GoogleSignIn googleSignIn = GoogleSignIn(
//     scopes: ['email', 'openid', 'profile'],
//   );
//
//   Future<void> login(BuildContext context, WidgetRef ref) async {
//     final user = await googleSignIn.signIn();
//
//     if (user != null) {
//       final loginResponse = await AuthService.instance
//           .loginWithToken(user.id, EndPointEnums.loginWithGoogle);
//       if (loginResponse != null && loginResponse.success) {
//         debugPrint(loginResponse.toString());
//         await saveUserAndNavigate(context, ref, loginResponse.user!.userId);
//       } else {
//         final registerResponse = await AuthService.instance.registerWithToken(
//           user.id,
//           EndPointEnums.registerWithGoogle,
//         );
//         if (registerResponse != null && registerResponse.success) {
//           debugPrint(registerResponse.toString());
//           await saveUserAndNavigate(
//               context, ref, registerResponse.user!.userId);
//         } else {
//           debugPrint(LocaleKeys.error.tr());
//         }
//       }
//     } else {
//       debugPrint(LocaleKeys.error.tr());
//     }
//   }
//
//   Future<void> saveUserAndNavigate(
//       BuildContext context, WidgetRef ref, int? userId) async {
//     CacheManager.instance.setUserId(userId ?? 0);
//     await ref.read(notificationProvider).login();
//     await context.router
//         .pushAndPopUntil(const MainRoute(), predicate: (_) => false);
//   }
// }
