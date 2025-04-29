import 'package:flutter/foundation.dart';
import 'package:pick_champ/core/const/app_env.dart';

class AdManager {
  static String get gameId {
    if (defaultTargetPlatform == TargetPlatform.android) {
      return AppEnv.unityAndroidGameId;
    } else {
      return AppEnv.unityIosGameId;
    }
  }

  static String get bannerAdPlacement {
    return defaultTargetPlatform == TargetPlatform.android
        ? AppEnv.bannerAdPlacementAndroid
        : AppEnv.bannerAdPlacementIos;
  }

  static String get rewardedVideoAdPlacement {
    return defaultTargetPlatform == TargetPlatform.android
        ? AppEnv.rewardedVideoAdPlacementAndroid
        : AppEnv.rewardedVideoAdPlacementIos;
  }

  static String get interstitialVideoAdPlacement {
    return defaultTargetPlatform == TargetPlatform.android
        ? AppEnv.interstitialAdAndroid
        : AppEnv.interstitialAdIos;
  }

  static final Map<String, bool> placements = {
    bannerAdPlacement: false,
    rewardedVideoAdPlacement: false,
    interstitialVideoAdPlacement: false,
  };
}
