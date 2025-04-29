// import 'package:auto_route/auto_route.dart';
// import 'package:findpro/common/services/manager/ad_manager.dart';
// import 'package:findpro/common/widget/custom_circular.dart';
// import 'package:flutter/foundation.dart' show kIsWeb;
// import 'package:flutter/material.dart';
// import 'package:unity_ads_plugin/unity_ads_plugin.dart';
//
// class VideoAdView extends StatefulWidget {
//   const VideoAdView({super.key});
//
//   @override
//   State<VideoAdView> createState() => _VideoAdViewState();
// }
//
// class _VideoAdViewState extends State<VideoAdView> {
//   bool _isAdReady = false;
//
//   @override
//   void initState() {
//     super.initState();
//     UnityAds.init(
//       gameId: AdManager.gameId,
//     ).then((value) {
//       setState(() {
//         _isAdReady = true;
//       });
//     }).catchError((error) {
//       setState(() {
//         _isAdReady = false;
//       });
//     });
//     if (!kIsWeb) {
//       _loadAdAndShow();
//     } else {
//       debugPrint('Unity Ads not supported on Windows');
//     }
//   }
//
//   void _loadAdAndShow() {
//     UnityAds.load(
//       placementId: AdManager.interstitialVideoAdPlacement,
//       onComplete: (placementId) {
//         setState(() {
//           _isAdReady = true;
//         });
//         _showAd();
//         if (context.mounted) context.router.pop();
//       },
//       onFailed: (placementId, error, message) {
//         setState(() {
//           _isAdReady = false;
//         });
//         context.router.pop();
//       },
//     );
//   }
//
//   void _showAd() {
//     if (_isAdReady) {
//       UnityAds.showVideoAd(
//         placementId: AdManager.interstitialVideoAdPlacement,
//         onComplete: (placementId) {
//           context.router.pop();
//         },
//         onClick: (placementId) {},
//         onFailed: (placementId, error, message) {
//           context.router.pop();
//         },
//       );
//       setState(() {
//         _isAdReady = false;
//       });
//     } else {
//       context.router.pop();
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: CustomCircular(),
//     );
//   }
// }
