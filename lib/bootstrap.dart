import 'dart:async';
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pick_champ/core/init/app_localization.dart';
import 'package:pick_champ/core/init/cache_manager.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];
  await dotenv.load();

  // await UnityAds.init(
  //   gameId: AdManager.gameId,
  // );
  // debugPrint('Unity Ads Initialized Successfully!');

  await CacheManager.instance.init();
  runApp(AppLocalization(child: ProviderScope(child: await builder())));
}
