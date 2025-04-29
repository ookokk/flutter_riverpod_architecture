// import 'dart:io';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// class AppleGoogleRow extends ConsumerWidget {
//   const AppleGoogleRow({super.key});
//
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     return LayoutBuilder(
//       builder: (BuildContext context, BoxConstraints constraints) {
//         return Column(
//           children: [
//             _Button(
//               constraints: constraints,
//               onPressed: () => GoogleLoginManager().login(context, ref),
//               logoPath: Assets.iconGooglelogo,
//               buttonText: LocaleKeys.loginWithGoogle.tr(),
//             ),
//             20.verticalSpace,
//             if (Platform.isIOS)
//               _Button(
//                 constraints: constraints,
//                 onPressed: () {
//                   AppleLoginManager().login(context, ref);
//                 },
//                 logoPath: Assets.iconApplelogo,
//                 buttonText: LocaleKeys.loginWithApple.tr(),
//               ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class _Button extends StatelessWidget {
//   const _Button({
//     required this.onPressed,
//     required this.logoPath,
//     required this.buttonText,
//     required this.constraints,
//   });
//
//   final VoidCallback onPressed;
//   final String logoPath;
//   final String buttonText;
//   final BoxConstraints constraints;
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: SizedBox(
//         width: constraints.maxWidth - 100,
//         height: 50,
//         child: ElevatedButton(
//           onPressed: onPressed,
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.blue.shade800,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(flex: 2, child: Image.asset(logoPath)),
//               Expanded(
//                 flex: 3,
//                 child: Text(
//                   buttonText,
//                   style: Theme.of(
//                     context,
//                   ).textTheme.headlineSmall?.copyWith(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
